USE DestructorMp3;
/*
-- 1. Limpieza total previa (Para asegurar entorno limpio)
SET SQL_SAFE_UPDATES = 0;
DELETE FROM PLAYLIST_CANCIONES;
DELETE FROM PLAYLIST;
SET SQL_SAFE_UPDATES = 1;
ALTER TABLE PLAYLIST AUTO_INCREMENT = 1;
*/

-- ============================================================================
-- 1. USUARIO FREE: Ana (CLI02)
-- ============================================================================

-- --- PLAYLIST A ---
INSERT INTO PLAYLIST (Titulo, FechaCreacion, IDCliente, NumCanciones) 
VALUES ('Mis Favoritas de Rozalén', '2026-05-18', 'CLI02', 0);

-- Insertar canciones buscando directamente el ID de la playlist por su nombre y dueño
INSERT INTO PLAYLIST_CANCIONES (IDList, IDCancion)
SELECT 
    (SELECT IDList FROM PLAYLIST WHERE Titulo = 'Mis Favoritas de Rozalén' AND IDCliente = 'CLI02'), 
    IDAudio 
FROM AUDIO 
WHERE NombreAudio IN ('La Puerta Violeta', 'Girasoles');

-- Actualizar contador buscando directamente por su nombre y dueño
UPDATE PLAYLIST 
SET NumCanciones = 2 
WHERE Titulo = 'Mis Favoritas de Rozalén' AND IDCliente = 'CLI02';


-- --- PLAYLIST B ---
INSERT INTO PLAYLIST (Titulo, FechaCreacion, IDCliente, NumCanciones) 
VALUES ('Mix Acústico Variado', '2026-05-18', 'CLI02', 0);

INSERT INTO PLAYLIST_CANCIONES (IDList, IDCancion)
SELECT 
    (SELECT IDList FROM PLAYLIST WHERE Titulo = 'Mix Acústico Variado' AND IDCliente = 'CLI02'), 
    IDAudio 
FROM AUDIO 
WHERE NombreAudio IN ('Je Veux', 'Les Passants', 'Te Conozco', 'Tecito Caliente');

UPDATE PLAYLIST 
SET NumCanciones = 4 
WHERE Titulo = 'Mix Acústico Variado' AND IDCliente = 'CLI02';


-- ============================================================================
-- 2. USUARIO PREMIUM: Carlos (CLI01)
-- ============================================================================

-- --- PLAYLIST 1 ---
INSERT INTO PLAYLIST (Titulo, FechaCreacion, IDCliente, NumCanciones) 
VALUES ('Rock Español Clásico', '2026-05-18', 'CLI01', 0);

INSERT INTO PLAYLIST_CANCIONES (IDList, IDCancion)
SELECT 
    (SELECT IDList FROM PLAYLIST WHERE Titulo = 'Rock Español Clásico' AND IDCliente = 'CLI01'), 
    IDAudio 
FROM AUDIO 
WHERE NombreAudio IN ('Fiesta Pagana', 'Molinos De Viento', 'Satania');

UPDATE PLAYLIST 
SET NumCanciones = 3 
WHERE Titulo = 'Rock Español Clásico' AND IDCliente = 'CLI01';


-- --- PLAYLIST 2 ---
INSERT INTO PLAYLIST (Titulo, FechaCreacion, IDCliente, NumCanciones) 
VALUES ('Lo Mejor de Arjona', '2026-05-18', 'CLI01', 0);

INSERT INTO PLAYLIST_CANCIONES (IDList, IDCancion)
SELECT 
    (SELECT IDList FROM PLAYLIST WHERE Titulo = 'Lo Mejor de Arjona' AND IDCliente = 'CLI01'), 
    IDAudio 
FROM AUDIO 
WHERE NombreAudio IN ('Señora de las Cuatro Décadas', 'Si el Norte Fuera el Sur');

UPDATE PLAYLIST 
SET NumCanciones = 2 
WHERE Titulo = 'Lo Mejor de Arjona' AND IDCliente = 'CLI01';


-- --- PLAYLIST 3 ---
INSERT INTO PLAYLIST (Titulo, FechaCreacion, IDCliente, NumCanciones) 
VALUES ('Energía Latina', '2026-05-18', 'CLI01', 0);

INSERT INTO PLAYLIST_CANCIONES (IDList, IDCancion)
SELECT 
    (SELECT IDList FROM PLAYLIST WHERE Titulo = 'Energía Latina' AND IDCliente = 'CLI01'), 
    IDAudio 
FROM AUDIO 
WHERE NombreAudio IN ('Adentro', 'Labios Compartidos');

UPDATE PLAYLIST 
SET NumCanciones = 2 
WHERE Titulo = 'Energía Latina' AND IDCliente = 'CLI01';