
CREATE DATABASE IF NOT EXISTS if0_36809215_blog;
USE if0_36809215_blog;


CREATE TABLE IF NOT EXISTS uzytkownik (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);


CREATE TABLE IF NOT EXISTS wpisy (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tytul VARCHAR(255) NOT NULL,
    tresc TEXT NOT NULL,
    obraz VARCHAR(255),
    data_publikacji TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_uzytkownika INT,
    FOREIGN KEY (id_uzytkownika) REFERENCES uzytkownik(id)
);


CREATE TABLE IF NOT EXISTS komentarze (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_wpisu INT,
    tresc TEXT NOT NULL,
    nazwa_uzytkownika VARCHAR(255),
    FOREIGN KEY (id_wpisu) REFERENCES wpisy(id)
);


INSERT INTO uzytkownik (username, password) VALUES ('admin', 'admin123');
INSERT INTO wpisy (tytul, tresc, obraz, id_uzytkownika) VALUES ('Pierwszy wpis', 'Test wpis 1', 'obraz1.jpg', 1);
INSERT INTO komentarze (id_wpisu, tresc, nazwa_uzytkownika) VALUES (1, 'Test Komentarz Jeden', 'admin');
