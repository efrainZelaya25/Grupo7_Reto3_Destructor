/*
--  Album  : Limones de Oro
--  Artista: Izaro
*/

USE DestructorMp3;

-- ARTISTA
INSERT INTO ARTISTA (IdArtista, NombreArtistico, Genero, Imagen, Descripcion, TipoArtista) VALUES
  ('IZ001', 'Izaro', 'Pop Alternativo / Indie Folk', 
   'izaro-limones-de-oro-2022/perfil.jpg', 'Cantautora e intérprete vasca conocida por su sensibilidad artística, composiciones poéticas y mezclas de pop, folk y música acústica.',
   'Musico');

-- MUSICO
INSERT INTO MUSICO (IdMusico, TipoMusico) VALUES
  ('IZ001', 'solista');
-- ALBUM (IDAlbum generado por AUTO_INCREMENT)
INSERT INTO ALBUM (Titulo, AnioPublicacion, Genero, DescripAlbum, ImagenPortada, IdMusico) VALUES
  ('Limones de Oro', 2022, 'Pop Alternativo / Folk', 
   'Un álbum recopilatorio especial lleno de colaboraciones en el que Izaro reversiona sus temas más emblemáticos junto a grandes artistas.', 
   'izaro-limones-de-oro-2022/cover.jpg', 'IZ001');
SET @id_album = LAST_INSERT_ID();

-- CANCIONES
-- 1. Ventanas Cerradas
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Ventanas Cerradas', 191, 'izaro-limones-de-oro-2022/01-izaro-ventanas-cerradas.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 2. Delirios
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Delirios', 269, 'izaro-limones-de-oro-2022/02-izaro-delirios.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 3. Grace
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Grace', 237, 'izaro-limones-de-oro-2022/03-izaro-grace.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 4. Argia
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Argia', 284, 'izaro-limones-de-oro-2022/04-izaro-argia.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 5. La Felicidad
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('La Felicidad', 240, 'izaro-limones-de-oro-2022/05-izaro-la-felicidad.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 6. Errefuxiatuena
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Errefuxiatuena', 241, 'izaro-limones-de-oro-2022/06-izaro-errefuxiatuena.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 7. Paris
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Paris', 195, 'izaro-limones-de-oro-2022/07-izaro-paris.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 8. Eider
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Eider', 273, 'izaro-limones-de-oro-2022/08-izaro-eider.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 9. Invierno a la Vista
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Invierno a la Vista', 223, 'izaro-limones-de-oro-2022/09-izaro-invierno-a-la-vista.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 10. Aquí
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Aquí', 207, 'izaro-limones-de-oro-2022/10-izaro-aqui.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 11. Un Poquito Más
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Un Poquito Más', 224, 'izaro-limones-de-oro-2022/11-izaro-un-poquito-mas.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 12. Mi Canción para Elisa
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Mi Canción para Elisa', 290, 'izaro-limones-de-oro-2022/12-izaro-mi-cancion-para-elisa.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 13. Libre
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Libre', 223, 'izaro-limones-de-oro-2022/13-izaro-libre.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);
