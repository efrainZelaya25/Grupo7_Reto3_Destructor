USE DestructorMp3;
/*De cada playlist se
almacenará un título, las canciones que contiene, la fecha de creación y un
identificador único*/
SELECT 
    p.IDList AS 'ID Lista',
    p.Titulo AS 'Nombre Playlist',
    p.IDCliente AS 'ID Dueño',
    p.FechaCreacion AS 'Fecha de Creación',
    p.NumCanciones AS 'Contador (NumCanciones)',
    GROUP_CONCAT(a.NombreAudio SEPARATOR ' || ') AS 'Canciones Incluidas Reales'
FROM PLAYLIST p
INNER JOIN PLAYLIST_CANCIONES pc ON p.IDList = pc.IDList
INNER JOIN AUDIO a ON pc.IDCancion = a.IDAudio
GROUP BY p.IDList, p.Titulo, p.IDCliente, p.FechaCreacion, p.NumCanciones;
/*el usuario es premium podrá crear muchas playlists. Los usuarios free solo
podrán crear 3 playlists. De momento, en la aplicación no se podrán compartir
playlists con otros usuarios. Un usuario podrá eliminar su propia playlis */

USE DestructorMp3;

DELIMITER //

CREATE TRIGGER limite_playlist
BEFORE INSERT ON PLAYLIST
FOR EACH ROW
BEGIN
    -- 1. Variables para guardar los datos del usuario
    DECLARE v_tipo VARCHAR(10);
    DECLARE v_cuantas_tiene INT;

    -- 2. Averiguar si el usuario es Free o Premium
    SELECT TipoCliente 
    INTO v_tipo 
    FROM CLIENTE 
    WHERE IDCliente = NEW.IDCliente;

    -- 3. Si es Free, contamos sus playlists
    IF v_tipo = 'Free' THEN
        SELECT COUNT(*) 
        INTO v_cuantas_tiene 
        FROM PLAYLIST 
        WHERE IDCliente = NEW.IDCliente;
        
        -- 4. Si ya llegó a 3, bloqueamos la creación
        IF v_cuantas_tiene >= 3
        THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: Los usuarios Free solo pueden tener 3 playlists.';
        END IF;
    END IF;
END//
/*
-- ELIMINAR PLAYLIST
*/
CREATE PROCEDURE eliminar_playlist (
    IN p_id_list INT,
    IN p_id_cliente VARCHAR(5)
)
BEGIN
    -- 1. Comprobamos si la playlist pertenece a este usuario
    IF EXISTS (SELECT 1 
				FROM PLAYLIST 
                WHERE IDList = p_id_list AND IDCliente = p_id_cliente) THEN
        
        -- 2. Si todo coincide, la borramos del sistema
        DELETE
        FROM PLAYLIST
        WHERE IDList = p_id_list;
        
    ELSE
        -- 3. Si no coincide, lanzamos un aviso de seguridad
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No puedes borrar una playlist que no es tuya.';
    END IF;
END//

DELIMITER ;
show triggers FROM destructormp3