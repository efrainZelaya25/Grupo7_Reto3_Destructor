-- ================================================
--  Album  : Cuando el Río Suena...
--  Artista: Rozalén
-- ================================================

USE DestructorMp3;

-- ARTISTA
INSERT INTO ARTISTA (IdArtista, NombreArtistico, Genero, Imagen, Descripcion, TipoArtista) VALUES
  ('RO001', 'Rozalén', 'Pop / Folk',
   'rozalen-cuando-el-rio-suena-2017/perfil.jpg', 
   'Reconocida cantautora y activista española, célebre por su voz expresiva, sus composiciones cargadas de compromiso social y su propuesta inclusiva de lenguaje de signos en directo.', 'Musico');

-- MUSICO
INSERT INTO MUSICO (IdMusico, TipoMusico) VALUES
  ('RO001', 'solista');

-- ALBUM (IDAlbum generado por AUTO_INCREMENT)

INSERT INTO ALBUM (Titulo, AnioPublicacion, Genero, DescripAlbum, ImagenPortada, IdMusico) VALUES
  ('Cuando el Río Suena...', 2017, 'Canción de Autor / Pop',
   'Tercer álbum de estudio de la artista, un trabajo sumamente íntimo y valiente donde relata historias personales y familiares ligadas a la memoria histórica y los derechos humanos.',
   'rozalen-cuando-el-rio-suena-2017/cover.jpg', 'RO001');
SET @id_album = LAST_INSERT_ID();

-- CANCIONES
-- 1. La Puerta Violeta
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('La Puerta Violeta', 202, 'rozalen-cuando-el-rio-suena-2017/01-rozalen-la-puerta-violeta.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 2. Dragón Rojo
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Dragón Rojo', 204, 'rozalen-cuando-el-rio-suena-2017/02-rozalen-dragon-rojo.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 3. Girasoles
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Girasoles', 220, 'rozalen-cuando-el-rio-suena-2017/03-rozalen-girasoles.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 4. Justo
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Justo', 254, 'rozalen-cuando-el-rio-suena-2017/04-rozalen-justo.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 5. La Que Baila Para Ti
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('La Que Baila Para Ti', 179, 'rozalen-cuando-el-rio-suena-2017/05-rozalen-la-que-baila-para-ti.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 6. Antes De Verte
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Antes De Verte', 234, 'rozalen-cuando-el-rio-suena-2017/06-rozalen-antes-de-verte.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 7. Tu Nombre
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Tu Nombre', 181, 'rozalen-cuando-el-rio-suena-2017/07-rozalen-tu-nombre.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 8. El Hijo De La Abuela
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('El Hijo De La Abuela', 206, 'rozalen-cuando-el-rio-suena-2017/08-rozalen-el-hijo-de-la-abuela.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 9. Amor Prohibido
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Amor Prohibido', 251, 'rozalen-cuando-el-rio-suena-2017/09-rozalen-amor-prohibido.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 10. Volver A Los Diecisiete
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Volver A Los Diecisiete', 259, 'rozalen-cuando-el-rio-suena-2017/10-rozalen-volver-a-los-diecisiete.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 11. Respect (Bonus)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Respect (Bonus)', 241, 'rozalen-cuando-el-rio-suena-2017/11-rozalen-respect-bonus.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);
