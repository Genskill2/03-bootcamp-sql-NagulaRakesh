DELETE FROM books_subjects  WHERE  subject= (SELECT id FROM subjects WHERE name ='History');
DELETE FROM subjects WHERE  name = 'History';
