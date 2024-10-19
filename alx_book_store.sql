CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
)

CREATE TABLE Books(
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT FOREIGN KEY,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors (author_id)
)

CREATE TABLE Customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
)

CREATE TABLE Orders(
    order_id INT PRIMARY KEY,
    customer_id INT FOREIGN KEY,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)
)

CREATE TABLE Order_Details(
    orderdetailid INT PRIMARY KEY,
    order_id INT FOREIGN KEY,
    book_id INT FOREIGN KEY,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders (order_id),
    FOREIGN KEY (book_id) REFERENCES Books (book_id_id)
)