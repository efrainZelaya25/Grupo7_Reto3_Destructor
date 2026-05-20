-- ================================================
--  Podcaster: La ruina
--  Episodios: 8
-- ================================================

USE DestructorMp3;

-- ARTISTA (Podcaster)
INSERT INTO ARTISTA (IdArtista, NombreArtistico, Genero, Imagen, Descripcion, TipoArtista) VALUES
  ('LR001', 'La Ruina', 'Comedia / Humor / Entrevistas',
   'la-ruina/perfil.jpg', 'Popular podcast de humor y comedia en vivo creado y presentado por los cómicos y guionistas Ignasi Taltavull y Tomàs Fuentes, donde tanto invitados especiales como el público comparten sus anécdotas más embarazosas.', 'Podcaster');

-- PODCASTER
INSERT INTO PODCASTER (IdPodcaster) VALUES
  ('LR001');

-- EPISODIOS DE PODCAST

-- Episodio 1: 307. La Ruina (con Yunez Chaib)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('307. La Ruina (con Yunez Chaib)', 4436, 'la-ruina/01-307-la-ruina-con-yunez-chaib.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Ignasi Taltavull, Tomàs Fuentes, Yunez Chaib', 'LR001');

-- Episodio 2: 306. La Ruina (con El Gran Wyoming)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('306. La Ruina (con El Gran Wyoming)', 4462, 'la-ruina/02-306-la-ruina-con-el-gran-wyoming.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Ignasi Taltavull, Tomàs Fuentes, El Gran Wyoming', 'LR001');

-- Episodio 3: 305. La Ruina (con Nacho Vegas)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('305. La Ruina (con Nacho Vegas)', 4457, 'la-ruina/03-305-la-ruina-con-nacho-vegas.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Ignasi Taltavull, Tomàs Fuentes, Nacho Vegas', 'LR001');

-- Episodio 4: 304. La Ruina (con Clara Tiscar)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('304. La Ruina (con Clara Tiscar)', 4426, 'la-ruina/04-304-la-ruina-con-clara-tiscar.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Ignasi Taltavull, Tomàs Fuentes, Clara Tiscar', 'LR001');

-- Episodio 5: 303. La Ruina (con David Trueba)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('303. La Ruina (con David Trueba)', 4503, 'la-ruina/05-303-la-ruina-con-david-trueba.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Ignasi Taltavull, Tomàs Fuentes, David Trueba', 'LR001');

-- Episodio 6: 302. La Ruina (con Nacho Roura)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('302. La Ruina (con Nacho Roura)', 4468, 'la-ruina/06-302-la-ruina-con-nacho-roura.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Ignasi Taltavull, Tomàs Fuentes, Nacho Roura', 'LR001');

-- Episodio 7: 301. La Ruina (con Facu Díaz)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('301. La Ruina (con Facu Díaz)', 4509, 'la-ruina/07-301-la-ruina-con-facu-diaz.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Ignasi Taltavull, Tomàs Fuentes, Facu Díaz', 'LR001');

-- Episodio 8: 300. La Ruina (con Antonio Carmona)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('300. La Ruina (con Antonio Carmona)', 4338, 'la-ruina/08-300-la-ruina-con-antonio-carmona.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Ignasi Taltavull, Tomàs Fuentes, Antonio Carmona', 'LR001');