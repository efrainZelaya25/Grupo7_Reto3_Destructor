-- ================================================
--  Album  : Zaz
--  Artista: Zaz
-- ================================================

USE DestructorMp3;

-- ARTISTA
INSERT INTO ARTISTA (IdArtista, NombreArtistico, Genero, Imagen, Descripcion, TipoArtista) VALUES
  ('ZA001', 'Zaz', 'Jazz / Pop',
   'zaz-zaz-2010/perfil.jpg', 
   'Cantautora francesa conocida por su característico estilo que fusiona la canción tradicional gala con el jazz manouche y el pop acústico, destacando por su voz rota y enérgica.', 'Musico');

-- MUSICO
INSERT INTO MUSICO (IdMusico, TipoMusico) VALUES
  ('ZA001', 'solista');

-- ALBUM (IDAlbum generado por AUTO_INCREMENT)

INSERT INTO ALBUM (Titulo, AnioPublicacion, Genero, DescripAlbum, ImagenPortada, IdMusico) VALUES
  ('Zaz', 2010, 'Jazz / Pop',
   'Álbum debut homónimo que lanzó a la fama internacional a la artista, impulsado por himnos de crítica social y optimismo acústico que revitalizaron el género del jazz gitano.',
   'zaz-zaz-2010/cover.jpg', 'ZA001');
SET @id_album = LAST_INSERT_ID();

-- CANCIONES
-- 1. Les Passants
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Les Passants', 213, 'zaz-zaz-2010/01-zaz-les-passants.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 2. Je Veux
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Je Veux', 215, 'zaz-zaz-2010/02-zaz-je-veux.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 3. Le Long De La Route
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Le Long De La Route', 206, 'zaz-zaz-2010/03-zaz-le-long-de-la-route.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 4. La fée
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('La fée', 245, 'zaz-zaz-2010/04-zaz-la-fee.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 5. Trop Sensible
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Trop Sensible', 239, 'zaz-zaz-2010/05-zaz-trop-sensible.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 6. Prends Garde À Ta Langue
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Prends Garde À Ta Langue', 221, 'zaz-zaz-2010/06-zaz-prends-garde-a-ta-langue.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 7. Ni Oui Ni Non
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Ni Oui Ni Non', 211, 'zaz-zaz-2010/07-zaz-ni-oui-ni-non.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 8. Port Coton
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Port Coton', 176, 'zaz-zaz-2010/08-zaz-port-coton.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 9. J'aime À Nouveau
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('J\'aime À Nouveau', 230, 'zaz-zaz-2010/09-zaz-j-aime-a-nouveau.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 10. Dans Ma Rue
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Dans Ma Rue', 302, 'zaz-zaz-2010/10-zaz-dans-ma-rue.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 11. Eblouie Par La Nuit
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Eblouie Par La Nuit', 163, 'zaz-zaz-2010/11-zaz-eblouie-par-la-nuit.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);
