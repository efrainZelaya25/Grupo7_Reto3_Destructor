-- ============================================================================
-- 5. REGISTRO DE CLIENTES DE PRUEBA (Nivel 2 y 3)
-- ============================================================================

USE DestructorMp3;

-- 5.1. Insertar usuarios en la tabla maestra CLIENTE
-- (Asociados a los idiomas 'ES' y 'FR' cargados al inicio de tu script)
INSERT INTO CLIENTE (IDCliente, NombreCliente, Apellido, Usuario, Contrasena, FechaNacimiento, TipoCliente, IDIdioma) VALUES
  ('CLI01', 'Carlos', 'Mendoza', 'carlos_m95', 'pass123_secure', '1995-04-12', 'Premium', 'ES'),
  ('CLI02', 'Ana', 'Gómez', 'ana_g', 'ana_password_98', '1998-11-23', 'Free', 'ES'),
  ('CLI03', 'Amélie', 'Poulain', 'amelie_paris', 'la_vie_en_rose', '2001-06-30', 'Premium', 'FR'),
  ('CLI04', 'David', 'Sanz', 'david_rock', 'mago_fan_de_oz', '1992-02-14', 'Free', 'ES'),
  ('CLI05', 'Laura', 'Martínez', 'laura_mental', 'salud_mental_2026', '1989-10-05', 'Free', 'ES');

-- 5.2. Especialización: Registrar las extensiones de cuentas de pago en la tabla PREMIUM
INSERT INTO PREMIUM (IDCliente, FechaRenovacion) VALUES
  ('CLI01', '2026-08-15'),
  ('CLI03', '2026-09-01');