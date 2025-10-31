# Library Database Management System

## Overview
This project demonstrates the creation and management of a **Library Database System** using **PostgreSQL**.  
The database includes tables for **Authors**, **Books**, and **Patrons**, and is developed across multiple sprints — each focusing on different SQL operations such as creating tables, inserting, updating, deleting, and retrieving data.

---

## Sprint 1: Database and Table Creation

### Tables Created

#### 1. Authors
CREATE TABLE authors (
  author_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  nationality VARCHAR(100) NOT NULL,
  birth_year INT,
  death_year INT
);

#### 2. Books
CREATE TABLE books (
  booksId SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  genres VARCHAR(100) NOT NULL,
  published_year INT,
  available BOOLEAN,
  author_id INT REFERENCES authors(author_id)
);

#### 3. Patrons
CREATE TABLE patrons (
  patronsId SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  borrowed_books INT
);

---

## Sprint 2: Data Insertion

### Insert Book Records
INSERT INTO books (id, title, author_id, genres, published_year, available) VALUES
(1, '1984', 1, ARRAY['Dystopian', 'Political Fiction'], 1949, TRUE),
(2, 'To Kill a Mockingbird', 2, ARRAY['Southern Gothic', 'Bildungsroman'], 1960, TRUE),
(3, 'The Great Gatsby', 3, ARRAY['Tragedy'], 1925, TRUE),
(4, 'Brave New World', 4, ARRAY['Dystopian', 'Science Fiction'], 1932, TRUE),
(5, 'The Catcher in the Rye', 5, ARRAY['Realist Novel', 'Bildungsroman'], 1951, TRUE),
(6, 'Moby-Dick', 6, ARRAY['Adventure Fiction'], 1851, TRUE),
(7, 'Pride and Prejudice', 7, ARRAY['Romantic Novel'], 1813, TRUE),
(8, 'War and Peace', 8, ARRAY['Historical Novel'], 1869, TRUE),
(9, 'Crime and Punishment', 9, ARRAY['Philosophical Novel'], 1866, TRUE),
(10, 'The Hobbit', 10, ARRAY['Fantasy'], 1937, TRUE);

### Insert Author Records
INSERT INTO authors (id, name, nationality, birth_year, death_year) VALUES
(1, 'George Orwell', 'British', 1903, 1950),
(2, 'Harper Lee', 'American', 1926, 2016),
(3, 'F. Scott Fitzgerald', 'American', 1896, 1940);

### Insert Patron Records
INSERT INTO patrons (id, name, email, borrowed_books) VALUES
(1, 'Alice Johnson', 'alice@example.com', ARRAY[]::INT[]),
(2, 'Bob Smith', 'bob@example.com', ARRAY[1, 2]),
(3, 'Carol White', 'carol@example.com', ARRAY[]::INT[]),
(4, 'David Brown', 'david@example.com', ARRAY[3]),
(5, 'Eve Davis', 'eve@example.com', ARRAY[]::INT[]),
(6, 'Frank Moore', 'frank@example.com', ARRAY[4, 5]),
(7, 'Grace Miller', 'grace@example.com', ARRAY[]::INT[]),
(8, 'Hank Wilson', 'hank@example.com', ARRAY[6]),
(9, 'Ivy Taylor', 'ivy@example.com', ARRAY[]::INT[]),
(10, 'Jack Anderson', 'jack@example.com', ARRAY[7, 8]);

---

## Sprint 3: Data Retrieval

SELECT * FROM books;
SELECT * FROM books WHERE title = '1984';

---

## Sprint 4: Data Update

UPDATE books
SET available = FALSE
WHERE bookId = 2;

UPDATE books
SET genres = array_append(genres, 'fall')
WHERE booksId = 6;

UPDATE patrons
SET borrowed_books = array_append(borrowed_books, 1)
WHERE patronsId = 3;

---

##  Sprint 5: Data Deletion

DELETE FROM books
WHERE title = 'The Great Gatsby';

DELETE FROM authors
WHERE author_id = 1;

---

## Sprint 6: Advanced Queries and Modifications

SELECT * FROM books 
WHERE published_year > 1950;

SELECT * FROM authors
WHERE nationality = 'American';

UPDATE books 
SET available = TRUE;

SELECT * FROM books
WHERE available = TRUE AND published_year > 1950;

SELECT * FROM authors
WHERE name ILIKE '%George%';

UPDATE books
SET published_year = 1870
WHERE published_year = 1869;

---

## Tools Used
- **PostgreSQL** – for database creation and management  
- **SQL** – for all queries and commands  


---
