-- ================================================
--  Podcaster: El Pais Audio
--  Episodios: 1
-- ================================================

USE DestructorMp3;

-- ARTISTA (Podcaster)
INSERT INTO ARTISTA (IdArtista, NombreArtistico, Genero, Imagen, Descripcion, TipoArtista) VALUES
  ('PA001', 'El País Audio', 'Periodismo / Documental / Actualidad',
   'como-contar-un-pais/perfil.jpg',
   'Plataforma oficial de podcast y contenidos sonoros del periódico EL PAÍS, especializada en grandes historias periodísticas, análisis de actualidad, reportajes en profundidad y documentales de audio.', 'Podcaster');

-- PODCASTER
INSERT INTO PODCASTER (IdPodcaster) VALUES
  ('PA001');

-- EPISODIOS DE PODCAST
-- Episodio ?: Cómo contar un país - Tráiler
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Cómo contar un país - Tráiler', 44, 'como-contar-un-pais/2-como-contar-un-pais-trailer.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), NULL, 'PA001');
