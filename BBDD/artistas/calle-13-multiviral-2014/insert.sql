/*
--  Album  : MultiViral
--  Artista: Calle 13
*/
/*
   PASO PREVIO: LIMPIEZA DE TABLAS (Para reiniciar los contadores a 1)
 */
-- Desactivamos temporalmente las llaves foráneas para poder vaciar sin errores de restricción
SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE CANCION;
TRUNCATE TABLE AUDIO;
TRUNCATE TABLE ALBUM;
TRUNCATE TABLE MUSICO;
TRUNCATE TABLE ARTISTA;

-- Volvemos a activar las llaves foráneas
SET FOREIGN_KEY_CHECKS = 1;

USE DestructorMp3;
-- ARTISTA
INSERT INTO ARTISTA (IdArtista, NombreArtistico, Imagen, Genero, Descripcion, TipoArtista) VALUES
  ('CA001', 'Calle 13', 'calle-13-multiviral-2014/perfil.jpg', 'Rap Alternativo / Urbano',
  'Banda de rap fusión y música urbana alternativa de Puerto Rico, ganadora de múltiples premios Grammy.', 'Musico');

-- MUSICO
INSERT INTO MUSICO (IdMusico, TipoMusico) VALUES
  ('CA001', 'solista');

-- ALBUM (IDAlbum generado por AUTO_INCREMENT)

INSERT INTO ALBUM (Titulo, AnioPublicacion, Genero, DescripAlbum, ImagenPortada, IdMusico) VALUES
  ('MultiViral', 2014, 'Rap Fusión / Urbano', 
  'Quinto álbum de estudio de la banda, caracterizado por su fuerte crítica social, líricas filosóficas y colaboraciones internacionales de diversos ámbitos.', 
  'calle-13-multiviral-2014/cover.jpg', 'CA001');
SET @id_album = LAST_INSERT_ID();

-- CANCIONES
-- 1. Intro - El Viaje
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Intro - El Viaje', 120, 'calle-13-multiviral-2014/01-calle-13-intro-el-viaje.mp3', 'Cancion');

/*INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES 
  (LAST_INSERT_ID(), (SELECT IDAlbum FROM ALBUM WHERE Titulo = 'MultiViral' LIMIT 1), 'Eduardo Galeano');*/

INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 2. La Vida (Respira el Momento)
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('La Vida (Respira el Momento)', 329, 'calle-13-multiviral-2014/02-calle-13-la-vida-respira-el-momento.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 3. Interludio - Un Buen Día para Morir
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Interludio - Un Buen Día para Morir', 40, 'calle-13-multiviral-2014/03-calle-13-interludio-un-buen-dia-para-morir.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 4. El Aguante
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('El Aguante', 288, 'calle-13-multiviral-2014/04-calle-13-el-aguante.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 5. Ojos Color Sol
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Ojos Color Sol', 217, 'calle-13-multiviral-2014/05-calle-13-ojos-color-sol.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 6. Multi_Viral
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Multi_Viral', 263, 'calle-13-multiviral-2014/06-calle-13-multi-viral.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 7. Cuando los Pies Besan el Piso
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Cuando los Pies Besan el Piso', 234, 'calle-13-multiviral-2014/07-calle-13-cuando-los-pies-besan-el-piso.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 8. Adentro
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Adentro', 292, 'calle-13-multiviral-2014/08-calle-13-adentro.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 9. Interludio - Stupid Is as Stupid Does
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Interludio - Stupid Is as Stupid Does', 59, 'calle-13-multiviral-2014/09-calle-13-interludio-stupid-is-as-stupid-does.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 10. Los Idiotas
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Los Idiotas', 270, 'calle-13-multiviral-2014/10-calle-13-los-idiotas.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 11. Fuera de la Atmósfera del Cráneo
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Fuera de la Atmósfera del Cráneo', 235, 'calle-13-multiviral-2014/11-calle-13-fuera-de-la-atmosfera-del-craneo.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 12. Perseguido
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Perseguido', 284, 'calle-13-multiviral-2014/12-calle-13-perseguido.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 13. Gato Que Avanza, Perro Que Ladra
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Gato Que Avanza, Perro Que Ladra', 308, 'calle-13-multiviral-2014/13-calle-13-gato-que-avanza-perro-que-ladra.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 14. Me Vieron Cruzar
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Me Vieron Cruzar', 234, 'calle-13-multiviral-2014/14-calle-13-me-vieron-cruzar.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);

-- 15. Así de Grandes Son las Ideas
INSERT INTO AUDIO (NombreAudio, Duracion, ArchivoAudio, TipoAudio) VALUES
  ('Así de Grandes Son las Ideas', 311, 'calle-13-multiviral-2014/15-calle-13-asi-de-grandes-son-las-ideas.mp3', 'Cancion');
INSERT INTO CANCION (IDCancion, IDAlbum, ArtistasInvitados) VALUES
  (LAST_INSERT_ID(), @id_album, NULL);
