-- 1. Get all books
SELECT * FROM books;

-- 2. Get a book by title 
SELECT * FROM books WHERE title = '1984';

-- 3. Get all books by a specific author 
SELECT b.*
FROM books b
JOIN authors a ON b.author_id = a.id
WHERE a.name = 'George Orwell';

-- 4. Get all available books
SELECT * FROM books WHERE available = TRUE;



-- Sprint 4: Data Update

UPDATE books
SET available = FALSE
WHERE bookId = 2;

UPDATE books
SET genres = array_append(genres, 'fall')
WHERE booksId = 6;

UPDATE patrons
SET borrowed_books = array_append(borrowed_books, 1)
WHERE patronsId = 3;


-- Sprint 5: Data Deletion

DELETE FROM books
WHERE title = 'The Great Gatsby';

DELETE FROM authors
WHERE author_id = 1;


--  Sprint 6: Advanced Queries and Modifications

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
