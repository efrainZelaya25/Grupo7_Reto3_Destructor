#!/usr/bin/env python3
"""
mp3_to_sql_podcast.py  -  Genera INSERTs SQL para DestructorMp3 desde una carpeta de episodios de podcast.
Uso:  python mp3_to_sql_podcast.py /ruta/a/la/carpeta
Deps: pip install mutagen
"""

import sys
from pathlib import Path

try:
    from mutagen.mp3 import MP3
    from mutagen.id3 import ID3
except ImportError:
    print("ERROR: Instala mutagen primero:  pip install mutagen")
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

    episodios = []
    for mp3 in mp3s:
        try:
            tags = ID3(str(mp3))
        except Exception:
            print(f"  AVISO: sin tags ID3 en {mp3.name}, se omite.")
            continue

        episodios.append({
            "archivo":    mp3,
            "titulo":     get_tag(tags, "TIT2") or mp3.stem,
            "podcaster":  get_tag(tags, "TPE1", "TPE2"),
            "pista":      numero_pista(get_tag(tags, "TRCK")),
            "duracion":   duracion_segundos(mp3),
        })

    episodios.sort(key=lambda x: x["pista"])
    return episodios

# ─────────────────────────────────────────────
#  Generación de SQL
# ─────────────────────────────────────────────

def generar_sql(episodios, carpeta,
                id_podcaster, nombre_podcaster, es_nuevo,
                descripcion_podcaster, genero_podcaster,
                colaboradores_globales):

    ruta_carpeta = carpeta.name
    img_podcaster = f"{ruta_carpeta}/perfil.jpg"

    L = []
    L.append("-- ================================================")
    L.append(f"--  Podcaster: {nombre_podcaster}")
    L.append(f"--  Episodios: {len(episodios)}")
    L.append("-- ================================================")
    L.append("")
    L.append("USE DestructorMp3;")
    L.append("")

    # ── Podcaster nuevo ──────────────────────────────────────────────
    if es_nuevo:
        L.append("-- ARTISTA (Podcaster)")
        L.append(
            f"INSERT INTO ARTISTA (IdArtista, NombreArtistico, Genero, Imagen, Descripcion, TipoArtista) VALUES\n"
            f"  ('{escape(id_podcaster)}', '{escape(nombre_podcaster)}', '{escape(genero_podcaster)}',\n"
            f"   '{img_podcaster}', '{escape(descripcion_podcaster)}', 'Podcaster');"
        )
        L.append("")
        L.append("-- PODCASTER")
        L.append(
            f"INSERT INTO PODCASTER (IdPodcaster) VALUES\n"
            f"  ('{escape(id_podcaster)}');"
        )
        L.append("")

    # ── Episodios ────────────────────────────────────────────────────
    L.append("-- EPISODIOS DE PODCAST")
    for ep in episodios:
        ruta_mp3 = f"{ruta_carpeta}/{ep['archivo'].name}"

        # Colaboradores: primero los globales, luego se pueden sobrescribir por episodio
        colaboradores = colaboradores_globales

        # Preguntar colaboradores por episodio si no hay globales
        if not colaboradores:
            col_ep = preguntar(
                f"Colaboradores del episodio '{ep['titulo']}' (deja vacío si ninguno)",
                default=""
            )
            colaboradores = col_ep

        col_sql = f"'{escape(colaboradores)}'" if colaboradores else "NULL"

        L.append(f"-- Episodio {ep['pista'] or '?'}: {ep['titulo']}")
        L.append(
            f"INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES\n"
            f"  ('{escape(ep['titulo'])}', {ep['duracion']}, '{ruta_mp3}', 'Podcast');"
        )
        L.append(
            f"INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES\n"
            f"  (LAST_INSERT_ID(), {col_sql}, '{escape(id_podcaster)}');"
        )
        L.append("")

    return "\n".join(L)

# ─────────────────────────────────────────────
#  Main
# ─────────────────────────────────────────────

def main():
    if len(sys.argv) < 2:
        print("Uso: python mp3_to_sql_podcast.py /ruta/a/la/carpeta")
        sys.exit(1)

    carpeta = Path(sys.argv[1]).resolve()
    if not carpeta.is_dir():
        print(f"ERROR: no existe '{carpeta}'")
        sys.exit(1)

    print(f"\n Carpeta: {carpeta.name}")
    episodios = leer_carpeta(carpeta)
    if not episodios:
        print("Sin episodios.")
        sys.exit(1)

    ep0 = episodios[0]
    print(f"\nDetectado en los MP3:")
    print(f"   Podcaster : {ep0['podcaster']}")
    print(f"   Episodios : {len(episodios)}")

    # ── Datos del podcaster ──────────────────────────────────────────
    nombre_podcaster = preguntar("\nNombre del podcaster", ep0["podcaster"])
    es_nuevo         = confirmar("El podcaster es NUEVO en la BD?")
    id_podcaster     = preguntar("IdPodcaster (CHAR 5, ej: PC001)")

    descripcion_podcaster = ""
    genero_podcaster      = ""

    if es_nuevo:
        print("\n  Datos del podcaster:")
        genero_podcaster      = preguntar("Temática / género del podcast (ej: Tecnología, Historia, etc.)")
        descripcion_podcaster = preguntar("Descripción del podcaster")

    # ── Colaboradores ────────────────────────────────────────────────
    print("\n  Colaboradores:")
    col_globales = ""
    if confirmar("¿Todos los episodios tienen los mismos colaboradores?"):
        col_globales = preguntar("Colaboradores (separa con comas, deja vacío si ninguno)", default="")
    # si no son globales, se preguntarán por episodio dentro de generar_sql

    sql = generar_sql(
        episodios, carpeta,
        id_podcaster, nombre_podcaster, es_nuevo,
        descripcion_podcaster, genero_podcaster,
        col_globales,
    )

    out = carpeta / "insert_podcast.sql"
    out.write_text(sql, encoding="utf-8")
    print(f"\nGuardado: {out}")
    print(f"   {len(episodios)} episodios procesados.")

if __name__ == "__main__":
    main()
