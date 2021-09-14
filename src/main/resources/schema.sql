DROP TABLE IF EXISTS AUTHOR;
DROP TABLE IF EXISTS GENRE;
DROP TABLE IF EXISTS BOOK;

CREATE TABLE AUTHOR
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(250) NOT NULL
);

CREATE TABLE BOOK
(
    id        INT AUTO_INCREMENT PRIMARY KEY,
    name      VARCHAR(250) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES AUTHOR (id)
);

CREATE TABLE GENRE
(
    id      INT AUTO_INCREMENT PRIMARY KEY,
    name    VARCHAR(250) NOT NULL,
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES BOOK (id)
);


