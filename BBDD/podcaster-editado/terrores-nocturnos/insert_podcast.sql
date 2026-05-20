-- ================================================
--  Podcaster: Terrores nocturnos
--  Episodios: 8
-- ================================================

USE DestructorMp3;

-- ARTISTA (Podcaster)
INSERT INTO ARTISTA (IdArtista, NombreArtistico, Genero, Imagen, Descripcion, TipoArtista) VALUES
  ('TN001', 'Terrores nocturnos', 'Misterio / Terror / True Crime',
   'terrores-nocturnos/perfil.jpg', 'Exitoso podcast de misterio, crónica negra y sucesos paranormales creado y conducido por Emma Entrena y Alvar Álvaro, reconocido por su cuidada ambientación sonora y sus narraciones inmersivas.', 'Podcaster');

-- PODCASTER
INSERT INTO PODCASTER (IdPodcaster) VALUES
  ('TN001');

-- EPISODIOS DE PODCAST

-- Episodio 1: 07X34 MOTHMAN, BIGFOOT y más CRIATURAS ATERRADORAS en los MONTES APALACHES
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('07X34 MOTHMAN, BIGFOOT y más CRIATURAS ATERRADORAS en los MONTES APALACHES', 1558, 'terrores-nocturnos/01-07x34-mothman-bigfoot-y-mas-criaturas-aterradoras-en-los-montes-apalaches.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Emma Entrena, Alvar Álvaro', 'TN001');

-- Episodio 2 (Acortado a 49 caracteres)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('02x32 TRC | J.A. Rodríguez Vega: Asesino de Ancianas', 4052, 'terrores-nocturnos/02-02x32-trc-criminales-en-serie-de-espana-jose-antonio-rodriguez-vega-acababa-y-abusaba-de-ancianas.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Emma Entrena, Alvar Álvaro', 'TN001');

-- Episodio 3 (Acortado a 46 caracteres)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('07X33 ¿Cuántos fantasmas hay en esta casa?', 1995, 'terrores-nocturnos/03-07x33-pero-cuantos-fantasmas-hay-en-esta-casa-investigacion-paranormal-en-la-casa-maldita-de-bosque-negro.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Emma Entrena, Alvar Álvaro', 'TN001');

-- Episodio 4 (Acortado a 42 caracteres)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('02x31 TRC | El caso de Leyla Monserrat', 2279, 'terrores-nocturnos/04-02x31-trc-acabaron-con-ella-lo-grabaron-y-se-lo-pasaron-a-su-madre-el-caso-de-leyla-monserrat.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Emma Entrena, Alvar Álvaro', 'TN001');

-- Episodio 5 (Acortado a 42 caracteres)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('07X32 El caso paranormal de la familia Lee', 1934, 'terrores-nocturnos/05-07x32-el-caso-paranormal-de-la-familia-lee-fantasmas-gente-sombra-y-ataques-fisicos-en-bosque-negro.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Emma Entrena, Alvar Álvaro', 'TN001');

-- Episodio 6 (Acortado a 41 caracteres)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('2x30 TRC | La realidad de Nikocado Avocado', 2989, 'terrores-nocturnos/06-2x30-trc-la-realidad-de-nikocado-avocado-su-fama-le-llevo-a-la-locura.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Emma Entrena, Alvar Álvaro', 'TN001');

-- Episodio 7 (Acortado a 49 caracteres)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('07X31 Casos paranormales en hospitales reales', 1645, 'terrores-nocturnos/07-07x31-casos-paranormales-en-hospitales-y-residencias-historias-reales.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Emma Entrena, Alvar Álvaro', 'TN001');

-- Episodio 8 (Acortado a 40 caracteres)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('02x29 TRC | El extraño caso de Kristil Krug', 2957, 'terrores-nocturnos/08-02x29-trc-el-final-mas-inesperado-el-caso-de-kristil-krug-el-crimen-mas-retorcido.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Emma Entrena, Alvar Álvaro', 'TN001');
