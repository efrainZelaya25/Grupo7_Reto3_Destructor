-- ================================================
--  Podcaster: Molo Cebrian
--  Episodios: 5
-- ================================================

USE DestructorMp3;

-- ARTISTA (Podcaster)
INSERT INTO ARTISTA (IdArtista, NombreArtistico, Genero, Imagen, Descripcion, TipoArtista) VALUES
  ('MC001', 'Molo Cebrián', 'Psicología / Salud Mental / Divulgación',
   'entiende-tu-mente/perfil.jpg',
   'Podcaster, productor y estudiante de psicología español, creador y presentador de "Entiende tu Mente", el podcast de psicología en español más escuchado del mundo.', 'Podcaster');

-- PODCASTER
INSERT INTO PODCASTER (IdPodcaster) VALUES
  ('MC001');

-- EPISODIOS DE PODCAST

-- Episodio 1: Lidiar con la pérdida | Experiencias compartidas | 431
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Lidiar con la pérdida | Experiencias compartidas | 431', 1361, 'entiende-tu-mente/01-lidiar-con-la-perdida-experiencias-compartidas-431.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Luis Muiño, Mónica Saló', 'MC001');

-- Episodio 2: Ansiedad ante las entrevistas de trabajo | 430
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Ansiedad ante las entrevistas de trabajo | 430', 1410, 'entiende-tu-mente/02-ansiedad-ante-las-entrevistas-de-trabajo-430.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Luis Muiño, Mónica Saló', 'MC001');

-- Episodio 3: Aprender a soltar | 429
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Aprender a soltar | 429', 1255, 'entiende-tu-mente/03-aprender-a-soltar-429.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Luis Muiño, Mónica Saló', 'MC001');

-- Episodio 4: Del burnout a vivir a jornada completa | Experiencias compartidas | 427
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Del burnout a vivir a jornada completa | Experiencias compartidas | 427', 1777, 'entiende-tu-mente/05-del-burnout-a-vivir-a-jornada-completa-experiencias-compartidas-427.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Luis Muiño, Mónica Saló', 'MC001');

-- Episodio 5: Somos ansiosos | Así Somos
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Somos ansiosos | Así Somos', 1290, 'entiende-tu-mente/06-somos-ansiosos-asi-somos.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), 'Luis Muiño, Mónica Saló', 'MC001');
