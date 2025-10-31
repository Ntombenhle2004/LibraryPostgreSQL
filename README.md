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