CREATE SCHEMA IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS `user`(
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(64) NOT NULL,
    age INT NOT NULL
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS artist(
	artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(64) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS plan (
	plan_id INT PRIMARY KEY AUTO_INCREMENT,
    plan_name VARCHAR(64) NOT NULL,
    price DECIMAL(3, 2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS album(
	album_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(64) NOT NULL,
    release_year VARCHAR(64) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS song(
	song_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(128) NOT NULL,
    length_in_sec INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES album(album_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS song_history(
	id INT PRIMARY KEY AUTO_INCREMENT,
    history_date DATETIME NOT NULL,
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES `user`(user_id),
    FOREIGN KEY (song_id) REFERENCES song(song_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS user_artist(
	id INT PRIMARY KEY AUTO_INCREMENT,
    artist_id INT NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
    FOREIGN KEY (user_id) REFERENCES `user`(user_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS user_plan(
	id INT PRIMARY KEY AUTO_INCREMENT,
    register_date DATETIME NOT NULL,
    user_id INT NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES `user`(user_id),
    FOREIGN KEY (plan_id) REFERENCES plan(plan_id)
) ENGINE = InnoDB;

