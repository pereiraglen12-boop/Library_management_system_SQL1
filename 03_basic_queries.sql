

-- 1) List all books with author names
SELECT
    b.book_id,
    b.title,
    a.author_name,
    b.genre,
    b.available_copies
FROM books b
JOIN authors a ON b.author_id = a.author_id
ORDER BY b.title;

-- 2) Find books currently borrowed (not returned yet)
SELECT
    l.loan_id,
    b.title,
    m.member_name,
    l.issue_date,
    l.due_date
FROM loans l
JOIN books b ON l.book_id = b.book_id
JOIN members m ON l.member_id = m.member_id
WHERE l.return_date IS NULL
ORDER BY l.due_date;

-- 3) Count total books by genre
SELECT
    genre,
    COUNT(*) AS total_books
FROM books
GROUP BY genre
ORDER BY total_books DESC;

-- 4) Count number of loans by member
SELECT
    m.member_id,
    m.member_name,
    COUNT(l.loan_id) AS total_loans
FROM members m
LEFT JOIN loans l ON m.member_id = l.member_id
GROUP BY m.member_id, m.member_name
ORDER BY total_loans DESC;

-- 5) Show overdue loans (for today's date)
SELECT
    l.loan_id,
    m.member_name,
    b.title,
    l.due_date
FROM loans l
JOIN members m ON l.member_id = m.member_id
JOIN books b ON l.book_id = b.book_id
WHERE l.return_date IS NULL
  AND l.due_date < CURDATE()
ORDER BY l.due_date;
