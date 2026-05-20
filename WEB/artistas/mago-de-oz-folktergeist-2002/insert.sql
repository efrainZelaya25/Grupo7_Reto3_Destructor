-- ================================================
--  Album  : Folktergeist
--  Artista: Mägo De Oz
-- ================================================

USE DestructorMp3;

-- ARTISTA
INSERT INTO ARTISTA (IdArtista, NombreArtistico, Genero, Imagen, Descripcion, TipoArtista) VALUES
  ('MA001', 'Mägo de Oz', 'Folk Metal / Heavy Metal',
   'mago-de-oz-folktergeist-2002/perfil.jpg', 
   'Reconocida banda española de folk metal formada en 1988, famosa por su fusión de estilos pesados con música celta.', 'Musico');

-- MUSICO
INSERT INTO MUSICO (IdMusico, TipoMusico) VALUES
  ('MA001', 'grupo');

-- ALBUM (IDAlbum generado por AUTO_INCREMENT)

INSERT INTO ALBUM (Titulo, AnioPublicacion, Genero, DescripAlbum, ImagenPortada, IdMusico) VALUES
  ('Folktergeist', 2002, 'Folk Metal',
   'Primer álbum en directo de la banda, grabado durante la gira de Santiago y Volcarás la Leyenda, que recopila sus más grandes éxitos con la energía del público.',
   'mago-de-oz-folktergeist-2002/cover.jpg', 'MA001');
SET @id_album = LAST_INSERT_ID();

-- CANCIONES
-- 1. Satania
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Satania', 571, 'mago-de-oz-folktergeist-2002/01-mago-de-oz-satania.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 1. Jesús De Chamberí
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Jesús De Chamberí', 465, 'mago-de-oz-folktergeist-2002/10-mago-de-oz-jesus-de-chamberi.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 2. Maritornes
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Maritornes', 256, 'mago-de-oz-folktergeist-2002/02-mago-de-oz-maritornes.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 2. El Pacto
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('El Pacto', 401, 'mago-de-oz-folktergeist-2002/11-mago-de-oz-el-pacto.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 3. El Que Quiera Entender Que Entienda
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('El Que Quiera Entender Que Entienda', 436, 'mago-de-oz-folktergeist-2002/03-mago-de-oz-el-que-quiera-entender-que-entienda.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 3. Requiem
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Requiem', 542, 'mago-de-oz-folktergeist-2002/12-mago-de-oz-requiem.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 4. El Santo Grial
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('El Santo Grial', 344, 'mago-de-oz-folktergeist-2002/04-mago-de-oz-el-santo-grial.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 4. Santa Compaña
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Santa Compaña', 437, 'mago-de-oz-folktergeist-2002/13-mago-de-oz-santa-compana.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 5. El Lago
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('El Lago', 290, 'mago-de-oz-folktergeist-2002/05-mago-de-oz-el-lago.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 5. Astaroth
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Astaroth', 396, 'mago-de-oz-folktergeist-2002/14-mago-de-oz-astaroth.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 6. Hasta Que El Cuerpo Aguante
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Hasta Que El Cuerpo Aguante', 307, 'mago-de-oz-folktergeist-2002/06-mago-de-oz-hasta-que-el-cuerpo-aguante.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 6. La Danza Del Fuego
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('La Danza Del Fuego', 306, 'mago-de-oz-folktergeist-2002/15-mago-de-oz-la-danza-del-fuego.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 7. El Cantar De La Luna Oscura
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('El Cantar De La Luna Oscura', 403, 'mago-de-oz-folktergeist-2002/07-mago-de-oz-el-cantar-de-la-luna-oscura.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 7. Fiesta Pagana
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Fiesta Pagana', 304, 'mago-de-oz-folktergeist-2002/16-mago-de-oz-fiesta-pagana.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 8. La Leyenda De La Mancha
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('La Leyenda De La Mancha', 278, 'mago-de-oz-folktergeist-2002/08-mago-de-oz-la-leyenda-de-la-mancha.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 8. Hasta Que Tu Muerte Nos Separe
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Hasta Que Tu Muerte Nos Separe', 494, 'mago-de-oz-folktergeist-2002/17-mago-de-oz-hasta-que-tu-muerte-nos-separe.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 9. Pensando En Ti
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Pensando En Ti', 280, 'mago-de-oz-folktergeist-2002/09-mago-de-oz-pensando-en-ti.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 9. Molinos De Viento
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Molinos De Viento', 282, 'mago-de-oz-folktergeist-2002/18-mago-de-oz-molinos-de-viento.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);
