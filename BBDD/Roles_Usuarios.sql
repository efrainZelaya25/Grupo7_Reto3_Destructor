-- A. Creación de Roles
CREATE ROLE IF NOT EXISTS 'DBA_Admin', 'Empleado_Role', 'Cliente_Role';

-- B. Asignación de Permisos
-- DBA: Todo
GRANT ALL PRIVILEGES ON DestructorMp3.* TO 'DBA_Admin' WITH GRANT OPTION;

-- Empleado: Ver casi todo, editar solo Audios y Álbumes
GRANT SELECT ON DestructorMp3.* TO 'Empleado_Role';
GRANT INSERT, UPDATE, DELETE ON DestructorMp3.AUDIO TO 'Empleado_Role';
GRANT INSERT, UPDATE, DELETE ON DestructorMp3.ALBUM TO 'Empleado_Role';

-- Cliente: Ver catálogo y gestionar sus Playlists/Favoritos
GRANT SELECT ON DestructorMp3.AUDIO TO 'Cliente_Role';
GRANT SELECT ON DestructorMp3.ALBUM TO 'Cliente_Role';
GRANT INSERT, UPDATE, DELETE ON DestructorMp3.PLAYLIST TO 'Cliente_Role';
GRANT INSERT, DELETE ON DestructorMp3.FAVORITOS TO 'Cliente_Role';

-- C. Creación de Usuarios y asignación de Roles
CREATE USER 'admin_it'@'localhost' IDENTIFIED BY 'Admin123!';
CREATE USER 'empleado_01'@'localhost' IDENTIFIED BY 'Emp123!';
CREATE USER 'cliente_test'@'localhost' IDENTIFIED BY 'User123!';

GRANT 'DBA_Admin' TO 'admin_it'@'localhost';
GRANT 'Empleado_Role' TO 'empleado_01'@'localhost';
GRANT 'Cliente_Role' TO 'cliente_test'@'localhost';

-- Activar roles por defecto al loguearse
SET DEFAULT ROLE ALL TO 'admin_it'@'localhost', 'empleado_01'@'localhost', 'cliente_test'@'localhost';