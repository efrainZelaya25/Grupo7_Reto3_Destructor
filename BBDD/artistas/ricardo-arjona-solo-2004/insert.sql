-- ================================================
--  Album  : Solo
--  Artista: Ricardo Arjona
-- ================================================

USE DestructorMp3;

-- ARTISTA
INSERT INTO ARTISTA (IdArtista, NombreArtistico, Genero, Imagen, Descripcion, TipoArtista) VALUES
  ('RI001', 'Ricardo Arjona', 'Pop Latino / Balada / Trova',
   'ricardo-arjona-solo-2004/perfil.jpg', 
   'Cantautor guatemalteco célebre en toda Hispanoamérica por su particular estilo lírico, que fusiona baladas poéticas con temáticas sociales, románticas y cotidianas.',
   'Musico');

-- MUSICO
INSERT INTO MUSICO (IdMusico, TipoMusico) VALUES
  ('RI001', 'solista');

-- ALBUM (IDAlbum generado por AUTO_INCREMENT)
INSERT INTO ALBUM (Titulo, AnioPublicacion, Genero, DescripAlbum, ImagenPortada, IdMusico) VALUES
  ('Solo', 2004, 'Pop Latino / Balada',
   'Álbum recopilatorio acústico y testimonial que compila los éxitos más grandes de la carrera del cantautor, presentando versiones íntimas acompañadas de arreglos sutiles.',
   'ricardo-arjona-solo-2004/cover.jpg', 'RI001');
SET @id_album = LAST_INSERT_ID();

-- CANCIONES
-- 1. Te Conozco
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Te Conozco', 250, 'ricardo-arjona-solo-2004/01-ricardo-arjona-te-conozco.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 2. Desnuda
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Desnuda', 256, 'ricardo-arjona-solo-2004/02-ricardo-arjona-desnuda.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 3. Mujeres
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Mujeres', 266, 'ricardo-arjona-solo-2004/03-ricardo-arjona-mujeres.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 4. Lo Poco Que Queda de Mi
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Lo Poco Que Queda de Mi', 252, 'ricardo-arjona-solo-2004/04-ricardo-arjona-lo-poco-que-queda-de-mi.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 5. Porque Es Tan Cruel el Amor
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Porque Es Tan Cruel el Amor', 280, 'ricardo-arjona-solo-2004/05-ricardo-arjona-porque-es-tan-cruel-el-amor.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 6. Tu Reputación
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Tu Reputación', 287, 'ricardo-arjona-solo-2004/06-ricardo-arjona-tu-reputacion.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 7. Asignatura Pendiente
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Asignatura Pendiente', 233, 'ricardo-arjona-solo-2004/07-ricardo-arjona-asignatura-pendiente.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 8. Olvidarte
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Olvidarte', 292, 'ricardo-arjona-solo-2004/08-ricardo-arjona-olvidarte.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 9. Soledad
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Soledad', 258, 'ricardo-arjona-solo-2004/09-ricardo-arjona-soledad.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 10. Si el Norte Fuera el Sur
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Si el Norte Fuera el Sur', 276, 'ricardo-arjona-solo-2004/10-ricardo-arjona-si-el-norte-fuera-el-sur.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 11. Realmente No Estoy Tan Solo
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Realmente No Estoy Tan Solo', 250, 'ricardo-arjona-solo-2004/11-ricardo-arjona-realmente-no-estoy-tan-solo.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 12. Señora de las Cuatro Décadas
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Señora de las Cuatro Décadas', 290, 'ricardo-arjona-solo-2004/12-ricardo-arjona-senora-de-las-cuatro-decadas.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 13. La Mujer Que No Soñé
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('La Mujer Que No Soñé', 218, 'ricardo-arjona-solo-2004/13-ricardo-arjona-la-mujer-que-no-sone.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);
