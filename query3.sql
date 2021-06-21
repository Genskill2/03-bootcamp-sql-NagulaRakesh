SELECT title  FROM books  INNER JOIN books_subjects ON books_subjects.book=books.id WHERE books_subjects.subject IN (
	(SELECT id FROM subjects WHERE name = 'Technology'),
	(SELECT id FROM subjects WHERE name = 'Politics')
	);
