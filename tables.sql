
CREATE TABLE authors (
  author_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  nationality VARCHAR(100) NOT NULL,
  birth_year INT,
  death_year INT
);

CREATE TABLE books (
  booksId SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  genres ARRAY[] NOT NULL,
  published_year INT,
  available BOOLEAN,
  author_id INT REFERENCES authors(author_id)
);


CREATE TABLE patrons (
  patronsId SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  borrowed_books INT[]
);