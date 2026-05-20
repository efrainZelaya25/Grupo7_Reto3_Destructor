#!/usr/bin/env python3
"""
mp3_to_sql.py  -  Genera INSERTs SQL para DestructorMp3 desde una carpeta de album.
Uso:  python mp3_to_sql.py /ruta/al/album
Deps: pip install mutagen
"""

import sys
from pathlib import Path

try:
    from mutagen.mp3 import MP3
    from mutagen.id3 import ID3
except ImportError:
    print("ERROR: pip install mutagen")
    sys.exit(1)

# ─────────────────────────────────────────────
#  Helpers
# ─────────────────────────────────────────────

def escape(s):
    return s.replace("'", "\\'") if s else ""

def get_tag(tags, *keys):
    for k in keys:
        v = tags.get(k)
        if v:
            if hasattr(v, 'text') and v.text:
                return str(v.text[0]).strip()
            return str(v).strip()
    return ""

def duracion_segundos(mp3_path):
    try:
        return int(MP3(str(mp3_path)).info.length)
    except Exception:
        return 0

def numero_pista(track_str):
    try:
        return int(str(track_str).split("/")[0])
    except Exception:
        return 0

def preguntar(prompt, default=""):
    if default:
        v = input(f"  {prompt} [{default}]: ").strip()
        return v if v else default
    v = input(f"  {prompt}: ").strip()
    return v

def confirmar(prompt):
    return input(f"  {prompt} (s/n): ").strip().lower() == "s"

# ─────────────────────────────────────────────
#  Lectura de MP3s
# ─────────────────────────────────────────────

def leer_carpeta(carpeta):
    mp3s = sorted(carpeta.glob("*.mp3"))
    if not mp3s:
        print(f"No se encontraron MP3 en {carpeta}")
        sys.exit(1)

    canciones = []
    for mp3 in mp3s:
        try:
            tags = ID3(str(mp3))
        except Exception:
            print(f"  AVISO: sin tags ID3 en {mp3.name}, se omite.")
            continue

        canciones.append({
            "archivo":  mp3,
            "titulo":   get_tag(tags, "TIT2") or mp3.stem,
            "artista":  get_tag(tags, "TPE1", "TPE2"),
            "feat":     None,
            "album":    get_tag(tags, "TALB"),
            "anio":     get_tag(tags, "TDRC")[:4] if get_tag(tags, "TDRC") else "",
            "genero":   get_tag(tags, "TCON"),
            "pista":    numero_pista(get_tag(tags, "TRCK")),
            "duracion": duracion_segundos(mp3),
        })

    canciones.sort(key=lambda x: x["pista"])
    return canciones

# ─────────────────────────────────────────────
#  Generacion de SQL
# ─────────────────────────────────────────────

def generar_sql(canciones, carpeta,
                id_artista, nombre_artista, es_nuevo,
                tipo_musico, genero_artista, descripcion_artista,
                genero_album, anio_album):

    nombre_album = canciones[0]["album"]
    # ruta base = nombre de la carpeta de input
    ruta_carpeta = carpeta.name
    cover_album  = f"{ruta_carpeta}/cover.jpg"
    img_artista  = f"{ruta_carpeta}/perfil.jpg"

    L = []
    L.append("-- ================================================")
    L.append(f"--  Album  : {nombre_album}")
    L.append(f"--  Artista: {nombre_artista}")
    L.append("-- ================================================")
    L.append("")
    L.append("USE DestructorMp3;")
    L.append("")

    if es_nuevo:
        L.append("-- ARTISTA")
        L.append(
            f"INSERT INTO ARTISTA (IdArtista, NombreArtistico, Genero, Imagen, Descripcion, TipoArtista) VALUES\n"
            f"  ('{escape(id_artista)}', '{escape(nombre_artista)}', '{escape(genero_artista)}',\n"
            f"   '{img_artista}', '{escape(descripcion_artista)}', 'Musico');"
        )
        L.append("")
        L.append("-- MUSICO")
        L.append(
            f"INSERT INTO MUSICO (IdMusico, TipoMusico) VALUES\n"
            f"  ('{escape(id_artista)}', '{tipo_musico}');"
        )
        L.append("")

    L.append("-- ALBUM (IDAlbum generado por AUTO_INCREMENT)")
    L.append(
        f"INSERT INTO ALBUM (Titulo, AnioPublicacion, Genero, ImagenPortada, IdMusico) VALUES\n"
        f"  ('{escape(nombre_album)}', {anio_album}, '{escape(genero_album)}',\n"
        f"   '{cover_album}', '{escape(id_artista)}');"
    )
    L.append("SET @id_album = LAST_INSERT_ID();")
    L.append("")

    L.append("-- CANCIONES")
    for c in canciones:
        ruta_mp3 = f"{ruta_carpeta}/{c['archivo'].name}"
        feat_sql = f"'{escape(c['feat'])}'" if c["feat"] else "NULL"

        L.append(f"-- {c['pista']}. {c['titulo']}")
        L.append(
            f"INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES\n"
            f"  ('{escape(c['titulo'])}', {c['duracion']}, '{ruta_mp3}', 'Cancion');"
        )
        L.append(
            f"INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES\n"
            f"  (LAST_INSERT_ID(), @id_album, {feat_sql});"
        )
        L.append("")

    return "\n".join(L)

# ─────────────────────────────────────────────
#  Main
# ─────────────────────────────────────────────

def main():
    if len(sys.argv) < 2:
        print("Uso: python mp3_to_sql.py /ruta/al/album")
        sys.exit(1)

    carpeta = Path(sys.argv[1]).resolve()
    if not carpeta.is_dir():
        print(f"ERROR: no existe '{carpeta}'")
        sys.exit(1)

    print(f"\n Carpeta: {carpeta.name}")
    canciones = leer_carpeta(carpeta)
    if not canciones:
        print("Sin canciones.")
        sys.exit(1)

    c0 = canciones[0]
    print(f"\nDetectado en los MP3:")
    print(f"   Artista : {c0['artista']}")
    print(f"   Album   : {c0['album']}")
    print(f"   Anio    : {c0['anio']}")
    print(f"   Genero  : {c0['genero']}")
    print(f"   Pistas  : {len(canciones)}")

    # siempre pregunta el nombre por si hay feat/duo en metadatos
    nombre_artista = preguntar("\nNombre del artista", c0["artista"])
    es_nuevo       = confirmar("El artista es NUEVO en la BD?")
    id_artista     = preguntar("IdArtista (CHAR 5, ej: AR001)")

    genero_artista      = c0["genero"]
    descripcion_artista = ""
    tipo_musico         = "solista"

    if es_nuevo:
        print("\n  Datos del artista:")
        genero_artista      = preguntar("Genero predominante del artista", c0["genero"])
        descripcion_artista = preguntar("Descripcion del artista")
        car = preguntar("Solista o grupo? (s/g)", "s").lower()
        tipo_musico = "grupo" if car == "g" else "solista"

    genero_album = preguntar("\nGenero del album", c0["genero"])
    anio_album   = preguntar("Anio del album", c0["anio"])

    sql = generar_sql(
        canciones, carpeta,
        id_artista, nombre_artista, es_nuevo,
        tipo_musico, genero_artista, descripcion_artista,
        genero_album, anio_album
    )

    out = carpeta / "insert.sql"
    out.write_text(sql, encoding="utf-8")
    print(f"\nGuardado: {out}")
    print(f"   {len(canciones)} canciones procesadas.")

if __name__ == "__main__":
    main()
