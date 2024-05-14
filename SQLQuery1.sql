create database spotify
use spotify
 create table roles (
Id int primary key identity,
[Name] nvarchar(50) not null,)

create table users(
Id int primary key identity,
FullName nvarchar(50),
[Name] nvarchar(50) not null,
SurName nvarchar(50),
isVerified BIT ,
roleId int foreign key references roles(Id)
)
CREATE TABLE Subscription (
    id INT PRIMARY KEY IDENTITY,
    Name VARCHAR(50),
    Price INT,
    userId int foreign key  REFERENCES users(Id)
);
CREATE TABLE albums (
    id INT PRIMARY KEY IDENTITY,
    Name VARCHAR(50),
    CreatedTime DATETIME
);
CREATE TABLE songs (
    id INT PRIMARY KEY IDENTITY,
    Name VARCHAR(50),
    DurationMinute INT,
    userId INT foreign key REFERENCES users(Id),
    CreatedTime DATETIME,
    albumId INT foreign key REFERENCES albums(id)
);
CREATE TABLE categories (
    id INT PRIMARY KEY IDENTITY,
    Name VARCHAR(50),
    CreatedTime DATETIME
);
CREATE TABLE song_categories (
    id INT PRIMARY KEY IDENTITY,
    SongId INT REFERENCES songs(id),
    CategoryId INT REFERENCES categories(id)
);

CREATE TABLE album_songs (
    id INT PRIMARY KEY IDENTITY,
    AlbumId INT REFERENCES albums(id),
    SongId INT REFERENCES songs(id)
);