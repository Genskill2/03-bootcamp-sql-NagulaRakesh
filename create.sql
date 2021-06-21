DROP TABLE publisher;
DROP TABLE books;
DROP TABLE subjects;
DROP TABLE books_subjects;



CREATE TABLE publisher (
       id integer primary key,
       name text NOT NULL,
       country text NOT NULL
);



CREATE TABLE books (
       id integer primary key,
       title text NOT NULL,
       publisher integer, FOREIGN KEY (publisher) REFERENCES publisher(id)
);



CREATE TABLE subjects (
       id integer primary key,
       name text NOT NULL
);


CREATE TABLE books_subjects (
       book integer,
       subject integer, 
       CONSTRAINT FK_subjects FOREIGN KEY (subject) REFERENCES subjects(id),
       CONSTRAINT FK_books FOREIGN KEY (book) REFERENCES books(id)
);

