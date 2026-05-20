-- ================================================
--  Album  : Júbilo
--  Artista: Sofía Viola
-- ================================================

USE DestructorMp3;

-- ARTISTA
INSERT INTO ARTISTA (IdArtista, NombreArtistico, Genero, Imagen, Descripcion, TipoArtista) VALUES
  ('SOF01', 'Sofía Viola', 'Folk Alternativo / Rock',
   'sofia-viola-jubilo-2013/perfil.jpg',
   'Cantautora, guitarrista y actriz argentina dotada de una voz profunda y un estilo histriónico único que funde el folclore latinoamericano con el tango, el blues y la canción urbana.', 'Musico');

-- MUSICO
INSERT INTO MUSICO (IdMusico, TipoMusico) VALUES
  ('SOF01', 'solista');

-- ALBUM (IDAlbum generado por AUTO_INCREMENT)
INSERT INTO ALBUM (Titulo, AnioPublicacion, Genero, DescripAlbum, ImagenPortada, IdMusico) VALUES
  ('Júbilo', 2013, 'Folk Alternativo / Rock',
   'Segundo álbum de estudio de la artista donde consolida su sonido acústico y arrabalero, ofreciendo canciones llenas de humor, nostalgia, paisajes cotidianos y profundas raíces latinoamericanas.',
   'sofia-viola-jubilo-2013/cover.jpg', 'SOF01');
SET @id_album = LAST_INSERT_ID();

-- CANCIONES
-- 1. Tecito Caliente
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Tecito Caliente', 200, 'sofia-viola-jubilo-2013/01-sofia-viola-tecito-caliente.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 2. Tio Conrado
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Tio Conrado', 206, 'sofia-viola-jubilo-2013/02-sofia-viola-tio-conrado.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 3. Respirar el Alba
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Respirar el Alba', 264, 'sofia-viola-jubilo-2013/03-sofia-viola-respirar-el-alba.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 4. Linda la Mañana
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Linda la Mañana', 238, 'sofia-viola-jubilo-2013/04-sofia-viola-linda-la-manana.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 5. Sin Marearme
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Sin Marearme', 177, 'sofia-viola-jubilo-2013/05-sofia-viola-sin-marearme.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);
