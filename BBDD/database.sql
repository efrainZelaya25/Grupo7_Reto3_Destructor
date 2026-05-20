/*1. LIMPIEZA Y CREACIÓN DE BASE DE DATOS*/

DROP DATABASE IF EXISTS DestructorMp3;
CREATE DATABASE DestructorMp3
    collate utf8mb4_spanish_ci;
USE DestructorMp3;

/* 2. TABLAS MAESTRAS (Nivel 1: Sin dependencias)*/
CREATE TABLE IDIOMA
(
    IDIdioma    CHAR(2) PRIMARY KEY,
    Descripcion VARCHAR(100) NOT NULL
);
CREATE TABLE ARTISTA
(
    IdArtista       VARCHAR(5) PRIMARY KEY,
    NombreArtistico VARCHAR(100) NOT NULL UNIQUE,
    Genero          VARCHAR(50) NOT NULL,
    Imagen          varchar(255) NOT NULL,
    Descripcion     TEXT NOT NULL,
    TipoArtista     ENUM ('Musico', 'Podcaster') NOT NULL /*verificar */
);
CREATE TABLE AUDIO
(
    IDAudio         INT AUTO_INCREMENT PRIMARY KEY,
    NombreAudio     VARCHAR(100)                NOT NULL UNIQUE,
    Duracion        INT                         NOT NULL,
    ArchivoAudio    varchar(300)                NOT NULL,
    TipoAudio       ENUM ('Cancion', 'Podcast') NOT NULL,
    NReproducciones INT                         NOT NULL DEFAULT 0
);

-- 3. ESPECIALIZACIÓN Y RELACIONES (Nivel 2)

CREATE TABLE MUSICO
(
    IdMusico   varchar(5) PRIMARY KEY,
    TipoMusico ENUM ('solista', 'grupo') NOT NULL,
    CONSTRAINT fk_musico_artista FOREIGN KEY (IdMusico) REFERENCES ARTISTA (IdArtista) ON DELETE CASCADE
);

CREATE TABLE CLIENTE
(
    IDCliente       VARCHAR(5) PRIMARY KEY   NOT NULL,
    NombreCliente   VARCHAR(100)             NOT NULL,
    Apellido        VARCHAR(100)             NOT NULL,
    Usuario         VARCHAR(50)              NOT NULL UNIQUE,
    Contrasena      VARCHAR(100)             NOT NULL,
    FechaNacimiento DATE                     NOT NULL,
    FechaRegistro   DATETIME DEFAULT CURRENT_TIMESTAMP,
    TipoCliente     ENUM ('Free', 'Premium') NOT NULL,
    IDIdioma        CHAR(2)                  NOT NULL,
    CONSTRAINT fk_cliente_idioma FOREIGN KEY (IDIdioma) REFERENCES IDIOMA (IDIdioma)
);

-- 4. CONTENIDO ESPECÍFICO (Nivel 3)

CREATE TABLE PREMIUM
(
    IDCliente       VARCHAR(5) PRIMARY KEY,
    FechaRenovacion DATE NOT NULL,
    CONSTRAINT fk_premium_cliente FOREIGN KEY (IDCliente) REFERENCES CLIENTE (IDCliente) ON DELETE CASCADE
);

CREATE TABLE ALBUM
(
    IDAlbum         INT AUTO_INCREMENT PRIMARY KEY,
    Titulo          VARCHAR(150) NOT NULL,
    AnioPublicacion INT          NOT NULL,
    Genero          VARCHAR(50)  NOT NULL,
    DescripAlbum     TEXT, /*verificar*/
    ImagenPortada  	VARCHAR(100) NOT NULL,
    IdMusico        VARCHAR(5) NOT NULL,
    CONSTRAINT fk_album_musico FOREIGN KEY (IdMusico) REFERENCES MUSICO(IdMusico)
);

CREATE TABLE CANCION
(
    IDCancion         INT PRIMARY KEY,
    IDAlbum           INT NOT NULL,
    ArtistasInvitados TEXT,
    CONSTRAINT fk_cancion_audio FOREIGN KEY (IDCancion) REFERENCES AUDIO (IDAudio) ON DELETE CASCADE,
    CONSTRAINT fk_cancion_album FOREIGN KEY (IDAlbum) REFERENCES ALBUM (IDAlbum)
);
CREATE TABLE PODCASTER
(
    IdPodcaster VARCHAR(5) PRIMARY KEY NOT NULL,
    CONSTRAINT fk_podcaster_artista FOREIGN KEY (IDPodcaster) REFERENCES ARTISTA (IdArtista) ON DELETE CASCADE
);

CREATE TABLE PODCAST
(
    IDPodcast     INT PRIMARY KEY,
    Colaboradores TEXT,
    IdPodcaster   VARCHAR(5) NOT NULL,
    CONSTRAINT fk_podcast_audio FOREIGN KEY (IDPodcast) REFERENCES AUDIO (IDAudio) ON DELETE CASCADE,
    CONSTRAINT fk_podcast_podcaster FOREIGN KEY (IdPodcaster) REFERENCES PODCASTER (IdPodcaster)
);


-- 5. INTERACCIÓN (Nivel 4: Playlists, Favoritos, Escuchas)

CREATE TABLE PLAYLIST
(
    IDList        INT AUTO_INCREMENT PRIMARY KEY,
    Titulo        VARCHAR(100) NOT NULL,
    FechaCreacion DATE         NOT NULL,
    IDCliente     VARCHAR(5)      NOT NULL,
    NumCanciones  INT DEFAULT 0, /*Verificar incrementado*/
    CONSTRAINT fk_playlist_cliente FOREIGN KEY (IDCliente) REFERENCES CLIENTE (IDCliente) ON DELETE CASCADE
);

CREATE TABLE PLAYLIST_CANCIONES
(
    IDList                INT,
    IDCancion             INT,
    fechaPlayList_Cancion DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (IDList, IDCancion),
    CONSTRAINT fk_pl_list FOREIGN KEY (IDList) REFERENCES PLAYLIST (IDList) ON DELETE CASCADE,
    CONSTRAINT fk_pl_cancion FOREIGN KEY (IDCancion) REFERENCES CANCION (IDCancion) ON DELETE CASCADE
);

CREATE TABLE FAVORITOS
(
    IDCliente VARCHAR(5),
    IDAudio   INT,
    PRIMARY KEY (IDCliente, IDAudio),
    CONSTRAINT fk_fav_cliente FOREIGN KEY (IDCliente) REFERENCES CLIENTE (IDCliente) ON DELETE CASCADE,
    CONSTRAINT fk_fav_audio FOREIGN KEY (IDAudio) REFERENCES AUDIO (IDAudio) ON DELETE CASCADE
);

CREATE TABLE REPRODUCCIONES
(
    IDReproduccion BIGINT AUTO_INCREMENT PRIMARY KEY,
    IDCliente      VARCHAR(5),
    IDAudio        INT,
    FechaEscucha   DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_rep_cliente FOREIGN KEY (IDCliente) REFERENCES CLIENTE (IDCliente) ON DELETE SET NULL,
    CONSTRAINT fk_rep_audio FOREIGN KEY (IDAudio) REFERENCES AUDIO (IDAudio) ON DELETE CASCADE 
);
