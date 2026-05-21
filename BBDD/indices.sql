-- Índices para mejorar la velocidad de búsqueda
CREATE INDEX idx_audio_titulo ON AUDIO(Titulo);
CREATE INDEX idx_album_genero ON ALBUM(Genero);
CREATE INDEX idx_cliente_usuario ON CLIENTE(Usuario);
CREATE INDEX idx_reproduccion_fecha ON REPRODUCCIONES(FechaEscucha);