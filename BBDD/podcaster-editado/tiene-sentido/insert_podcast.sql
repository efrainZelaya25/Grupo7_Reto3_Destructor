/*
--  Podcaster: Eli Romero 
--  Episodios: 7
*/

USE DestructorMp3;

-- ARTISTA (Podcaster)
INSERT INTO ARTISTA (IdArtista, NombreArtistico, Genero, Imagen, Descripcion, TipoArtista) VALUES
  ('ER001', 'Eli Romero', 'Entrevistas / Divulgación / Crecimiento Personal',
   'tiene-sentido/perfil.jpg', 'Periodista y comunicadora española, conductora del podcast "Tiene Sentido", un espacio de entrevistas en profundidad con expertos sobre salud, ciencia, neurociencia y estilo de vida.', 'Podcaster');

-- PODCASTER
INSERT INTO PODCASTER (IdPodcaster) VALUES
  ('ER001');

-- EPISODIOS DE PODCAST

-- Episodio 1 (Acortado a 46 caracteres)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Organizadora Prof.: 3 pasos para tu casa', 7596, 'tiene-sentido/01-organizadora-profesional-los-3-pasos-clave-para-organizar-tu-casa-son-clasificar-depurar-y.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), NULL, 'ER001');

-- Episodio 2 (Acortado a 44 caracteres)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Médico Forense: Secretos tras 5.000 autopsias', 6278, 'tiene-sentido/02-medico-forense-si-ven-lo-que-yo-he-visto-tras-5-000-autopsias-no-harian-muchas-cosas-que-hacen.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), NULL, 'ER001');

-- Episodio 3 (Acortado a 43 caracteres)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Experta en Ejercicio: Cómo perder grasa real', 5843, 'tiene-sentido/03-experta-en-ejercicio-el-cardio-no-te-hara-perder-grasa-haz-esto-durante-20-minutos-al-dia-para-perderla.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), NULL, 'ER001');

-- Episodio 4 (Acortado a 44 caracteres)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Exp. Nervio Vago: Rejuvenece cuerpo y cerebro', 7290, 'tiene-sentido/04-experto-en-nervio-vago-si-tomas-entre-3-5-tazas-al-dia-de-esto-tu-cuerpo-y-cerebro-rejuvenecen.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), NULL, 'ER001');

-- Episodio 5 (Acortado a 45 caracteres)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Neurocientífico: Cuándo tomar buenas decisiones', 8755, 'tiene-sentido/05-neurocientifico-toma-decisiones-importantes-entre-9-y-13h-nunca-lo-hagas-despues.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), NULL, 'ER001');

-- Episodio 6 (Acortado a 47 caracteres)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Neurocientífico: El ejercicio ideal para tu mente', 5284, 'tiene-sentido/06-neurocientifico-hacer-demasiado-ejercicio-envejece-tu-cerebro-esta-es-la-cantidad-ideal.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), NULL, 'ER001');

-- Episodio 7 (Acortado a 44 caracteres)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Exp. Geopolítica: El nuevo escenario de Cuba', 8921, 'tiene-sentido/07-experto-en-geopolitica-trump-necesita-una-victoria-y-todo-indica-que-ira-a-por-cuba.mp3', 'Podcast');
INSERT INTO PODCAST (IDPodcast, Colaboradores, IdPodcaster) VALUES
  (LAST_INSERT_ID(), NULL, 'ER001');