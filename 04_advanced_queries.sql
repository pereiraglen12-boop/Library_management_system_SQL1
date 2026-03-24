-- Slightly advanced reporting queries

-- 1) Most borrowed books
SELECT
    b.book_id,
    b.title,
    COUNT(l.loan_id) AS borrow_count
FROM books b
LEFT JOIN loans l ON b.book_id = l.book_id
GROUP BY b.book_id, b.title
ORDER BY borrow_count DESC, b.title;

-- 2) Monthly borrowing trend
SELECT
    DATE_FORMAT(issue_date, '%Y-%m') AS month,
    COUNT(*) AS loans_issued
FROM loans
GROUP BY DATE_FORMAT(issue_date, '%Y-%m')
ORDER BY month;

-- 3) Active members (borrowed at least 2 books)
SELECT
    m.member_id,
    m.member_name,
    COUNT(l.loan_id) AS loans_count
FROM members m
JOIN loans l ON m.member_id = l.member_id
GROUP BY m.member_id, m.member_name
HAVING COUNT(l.loan_id) >= 2
ORDER BY loans_count DESC;

-- 4) Book availability percentage
SELECT
    title,
    total_copies,
    available_copies,
    ROUND((available_copies * 100.0) / total_copies, 2) AS availability_percent
FROM books
ORDER BY availability_percent ASC;
