--A querry to find the total number of books borrowed and total number of books returned to the library

SELECT COUNT(Process) AS Total_borrowed_books FROM Records 
WHERE Process = "BORROWED";

SELECT COUNT(Process) AS  Returned_books FROM Records
WHERE Process = "RETURNED";

--List all available books in the library
SELECT * FROM Books;

UPDATE Records SET Process ="RETURNED"
WHERE Books_id = (SELECT id FROM Books WHERE Title ="The Art Of War" );

--A qerry to retrieve all the  patrons who have borrowed or returned a book record  using joins

SELECT CONCAT(p.First_name," ", p.Last_name) as Patron_Name, 
b.Title, CONCAT(a.First_name," ", a.Last_name) AS Author_name, r.Process FROM Patrons AS p 
JOIN Records AS r ON r.Patron_id = p.id
JOIN Authors AS a ON r.Authors_id = a.id
JOIN Books AS b ON b.id = r.Books_id;
