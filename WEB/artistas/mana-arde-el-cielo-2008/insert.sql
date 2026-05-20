-- ================================================
--  Album  : Arde El Cielo
--  Artista: Maná
-- ================================================

USE DestructorMp3;

-- ARTISTA

INSERT INTO ARTISTA (IdArtista, NombreArtistico, Genero, Imagen, Descripcion, TipoArtista) VALUES
  ('MN001', 'Maná', 'Rock en Español / Pop Rock',
   'mana-arde-el-cielo-2008/perfil.jpg',
   'Icónica banda mexicana de rock en español formada en 1986, considerada una de las agrupaciones latinas más influyentes y exitosas de todos los tiempos.',
   'Musico');

-- MUSICO
INSERT INTO MUSICO (IdMusico, TipoMusico) VALUES
  ('MN001', 'grupo');
  
-- ALBUM (IDAlbum generado por AUTO_INCREMENT)
INSERT INTO ALBUM (Titulo, AnioPublicacion, Genero, DescripAlbum, ImagenPortada, IdMusico) VALUES
  ('Arde El Cielo', 2008, 'Rock en Español',
   'Es el segundo álbum en vivo de la banda, grabado durante su gira Amar es Combatir en el Coliseo de Puerto Rico, el cual incluye además dos temas inéditos de estudio.',
   'mana-arde-el-cielo-2008/cover.jpg', 'MN001');
SET @id_album = LAST_INSERT_ID();

-- CANCIONES
-- 1. Déjame Entrar (En vivo)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Déjame Entrar (En vivo)', 267, 'mana-arde-el-cielo-2008/01-mana-dejame-entrar-en-vivo.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 2. Manda Una Señal (En vivo)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Manda Una Señal (En vivo)', 327, 'mana-arde-el-cielo-2008/02-mana-manda-una-senal-en-vivo.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 3. Labios Compartidos (En vivo)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Labios Compartidos (En vivo)', 362, 'mana-arde-el-cielo-2008/03-mana-labios-compartidos-en-vivo.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 4. Bendita Tu Luz (En vivo)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Bendita Tu Luz (En vivo)', 259, 'mana-arde-el-cielo-2008/04-mana-bendita-tu-luz-en-vivo.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 5. Vivir Sin Aire (En vivo)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Vivir Sin Aire (En vivo)', 330, 'mana-arde-el-cielo-2008/05-mana-vivir-sin-aire-en-vivo.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 6. Dónde jugarán los niños (En vivo)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Dónde jugarán los niños (En vivo)', 361, 'mana-arde-el-cielo-2008/06-mana-donde-jugaran-los-ninos-en-vivo.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 7. Mariposa Traicionera (En vivo)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Mariposa Traicionera (En vivo)', 271, 'mana-arde-el-cielo-2008/07-mana-mariposa-traicionera-en-vivo.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 8. El Rey (En vivo)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('El Rey (En vivo)', 308, 'mana-arde-el-cielo-2008/08-mana-el-rey-en-vivo.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 9. No Ha Parado de Llover (En Vivo)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('No Ha Parado de Llover (En Vivo)', 546, 'mana-arde-el-cielo-2008/09-mana-no-ha-parado-de-llover-en-vivo.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 10. En El Muelle de San Blas (En vivo)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('En El Muelle de San Blas (En vivo)', 376, 'mana-arde-el-cielo-2008/10-mana-en-el-muelle-de-san-blas-en-vivo.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 11. Clavado en Un Bar (En vivo)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Clavado en Un Bar (En vivo)', 419, 'mana-arde-el-cielo-2008/11-mana-clavado-en-un-bar-en-vivo.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 12. Rayando el Sol (En vivo)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Rayando el Sol (En vivo)', 383, 'mana-arde-el-cielo-2008/12-mana-rayando-el-sol-en-vivo.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 13. Si No Te Hubieras Ido
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Si No Te Hubieras Ido', 270, 'mana-arde-el-cielo-2008/13-mana-si-no-te-hubieras-ido.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 14. Arde El Cielo
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Arde El Cielo', 273, 'mana-arde-el-cielo-2008/14-mana-arde-el-cielo.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);
