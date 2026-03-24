-- Sample data for Library Management System

INSERT INTO authors (author_name, country) VALUES
('J.K. Rowling', 'United Kingdom'),
('George Orwell', 'United Kingdom'),
('Paulo Coelho', 'Brazil'),
('Harper Lee', 'United States');

INSERT INTO books (title, genre, published_year, author_id, total_copies, available_copies) VALUES
('Harry Potter and the Sorcerer''s Stone', 'Fantasy', 1997, 1, 5, 3),
('1984', 'Dystopian', 1949, 2, 4, 1),
('Animal Farm', 'Political Satire', 1945, 2, 3, 2),
('The Alchemist', 'Fiction', 1988, 3, 6, 4),
('To Kill a Mockingbird', 'Classic', 1960, 4, 2, 1);

INSERT INTO members (member_name, email, join_date) VALUES
('Aarav Sharma', 'aarav.sharma@email.com', '2025-01-10'),
('Maya Patel', 'maya.patel@email.com', '2025-02-05'),
('Rohan Mehta', 'rohan.mehta@email.com', '2025-02-18'),
('Ananya Singh', 'ananya.singh@email.com', '2025-03-01');

INSERT INTO loans (book_id, member_id, issue_date, due_date, return_date) VALUES
(1, 1, '2025-03-01', '2025-03-15', '2025-03-12'),
(2, 2, '2025-03-05', '2025-03-19', NULL),
(4, 3, '2025-03-07', '2025-03-21', '2025-03-20'),
(5, 4, '2025-03-10', '2025-03-24', NULL),
(3, 2, '2025-03-11', '2025-03-25', NULL);



