
-- Task 2: Data Insertion and Handling Nulls

-- 1️⃣ INSERT data into Authors
INSERT INTO Authors (name, bio) VALUES
('J.K. Rowling', 'British author, best known for the Harry Potter series.'),
('George Orwell', 'English novelist, essayist, journalist, and critic.'),
('Agatha Christie', NULL); -- Bio is unknown

-- 2️⃣ INSERT data into Publishers
INSERT INTO Publishers (name, address) VALUES
('Penguin Random House', 'New York, USA'),
('HarperCollins', 'London, UK'),
('Macmillan Publishers', NULL); -- Address unknown

-- 3️⃣ INSERT data into Books
INSERT INTO Books (title, author_id, publisher_id, genre) VALUES
('Harry Potter and the Sorcerer''s Stone', 1, 1, 'Fantasy'),
('1984', 2, 2, 'Dystopian'),
('Murder on the Orient Express', 3, 3, 'Mystery'),
('Animal Farm', 2, NULL, 'Political Satire'); -- Publisher unknown

-- 4️⃣ INSERT data into Members
INSERT INTO Members (name, email, join_date) VALUES
('Alice Johnson', 'alice@example.com', '2025-01-15'),
('Bob Smith', 'bob@example.com', '2025-02-10'),
('Charlie Brown', NULL, '2025-03-01'); -- Email missing

-- 5️⃣ INSERT data into Loans
INSERT INTO Loans (book_id, member_id, loan_date, return_date) VALUES
(1, 1, '2025-03-05', '2025-03-20'),
(2, 2, '2025-03-10', NULL), -- Not yet returned
(3, 1, '2025-04-01', '2025-04-15');

-- 6️⃣ UPDATE examples
UPDATE Publishers
SET address = 'Address not available'
WHERE address IS NULL;

UPDATE Members
SET email = 'noemail@example.com'
WHERE email IS NULL;

UPDATE Books
SET genre = 'Satire'
WHERE title = 'Animal Farm';

-- 7️⃣ DELETE examples
DELETE FROM Books
WHERE publisher_id IS NULL;

DELETE FROM Members
WHERE member_id NOT IN (SELECT DISTINCT member_id FROM Loans);
