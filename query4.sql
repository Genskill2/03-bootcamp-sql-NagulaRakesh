SELECT name FROM subjects INNER JOIN books_subjects ON books_subjects.subject=subjects.id WHERE books_subjects.book = (SELECT id FROM books WHERE title ='Atomic Habits'); 
