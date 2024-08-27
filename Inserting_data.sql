--adding books, records, authors and patrons to the library.

--insert different books types
INSERT INTO  Books(Title,Brand,Type,Quantity)
VALUES("To Kill a Mockingbird","Harper Perennial"," Fiction, Classic",20),
("1984","Penguin Books","Fiction,  Dystopian",50),
( "The Great Gatsby","Scribner","Fiction, Classic",100),
("Pride and Prejudice","Penguin Classics","Fiction, Romance",422),
("The Catcher in the Rye","Little, Brown and Company","Fiction, Coming-of-Age",12),
("The Hobbit", "Houghton Mifflin Harcourt", "Fiction, Fantasy" , 17),
("The Da Vinci Code", "Doubleday","Fiction, Mystery/Thriller", 34),
("Harry Potter and the Sorcerer's Stone","Scholastic", "Fiction, Fantasy",44),
("The Alchemist", "HarperOne", "Fiction, Adventure/Philosophical",55),
("Moby-Dick", "Harper & Brothers","Fiction, Adventure", 67),
("The Road", "Alfred A. Knopf", "Fiction, Post-Apocalyptic", 100),
("Sapiens: A Brief History of Humankind","Harper", "Non-Fiction, History",77),
("The Subtle Art of Not Giving a Fck*","HarperOne","Non-Fiction, Self-Help",322),
("Thinking, Fast and Slow", "Farrar, Straus and Giroux", "Non-Fiction, Psychology",86),
( "Educated","Random House", "Non-Fiction, Memoir",22),
("The Art of War", "Oxford University Press","Non-Fiction, Philosophy/Military Strategy",61),
("The Lean Startup", "Crown Business","Non-Fiction, Business",39),
("Becoming", "Crown Publishing Group", NULL, 11),
("The Silent Patient",NULL, NULL,200),
("The Power of Habit", NULL, "Non-Fiction, Self-Help/Psychology", 62),
("Angels & Demons", NULL, "Non-Fiction, Self-Help/Psychology", 4),
("Sense and sensibility", NULL, "Non-Fiction, Self-Help/Psychology", 12),
("Animal Farm", NULL, "Fiction", 6),
("No Country For Old Men", NULL, "Psychology", 60);
			
--add authors to the Authors table
INSERT INTO Authors(First_name, Last_name,Country,Gender)
VALUES("Harper", "Lee","United States","F"),  
("George"," Orwell" ,"United Kingdom","M"),  
("F. Scott", "Fitzgerald" , "United States","M"),   ("Jane", "Austen", "United Kingdom","F"),  
 ("J.D." ," Salinger","United States","M"),  
("J.R.R.","Tolkien","United Kingdom","M"),  
("Dan", "Brown" ,"United States","M"),  
("J.K.", "Rowling", "United Kingdom","F"),  
("Paulo","Coelho", "Brazil","M"),  
("Herman","Melville","United States","M"),  
("Cormac","McCarthy", "United States" ,"M"), 
("Yuval","Noah Harari","Israel","M"),  
("Mark", "Manson", "United States","M"),  
("Daniel","Kahneman"," Israel","M"),  
("Tara","Westover","United States","F"),  
("Sun","Tzu","China","F"),  
("Eric", "Ries", "United States","M"),  
("Michelle", "Obama","United States","F"),  
("Alex", "Michaelides", "United Kingdom","M"),  
("Charles","Duhigg","United States","M");

--Adding patrons of the library

INSERT INTO  Patrons(First_name, Last_name, Phone_number, City_address)
VALUES("Bire", "Elvis","0202974633","lgre12"),
("Samson", "Elvis","020266282","lgre12"),
("Bire", "Peter","227272729","lKoy12"),
("John", "Kuma","0191844575","katamato12"),
("Nyaaba", "Paul","0541188833","accra12"),
("Benjamin", "Kurug","055172374","Eastleg1"),
("Sunday", "Dok","054444181","kumas100"),
("Maria", "Bire","383322211","lgr17"),
("Bill", "Bolga","0592733149","Tamale92"),
("Jojo", "Iytel","0244438911","Tema1r2"),
("Bire", "Elvis","0209991111","comm1"),
("Elvis", "Kolbire","05712121345","comm2");

--Details of all activies of the patrons in the Record entity

INSERT INTO Records(Books_id, Authors_id,Patron_id, Process, date_time)
VALUES(15,15, 1,"BORROWED", "2024-02-27  12:15:00"),

(15,15,1, "BORROWED", "2024-01-27  00:15:00"),
(11,11,1, "BORROWED", "2024-02-27  1:15:00"),
(12,12,5, "RETURNED", "2024-02-27  16:15:00"),
(15,15,1, "BORROWED", "2024-02-27  15:15:00"),
(2,2,7, "RETURNED", "2024-02-27  8:15:00"),
(4,4,1, "RETURNED", "2024-02-27  10:15:00"),
(15,15,12, "BORROWED", "2024-02-27  11:15:00"),
(1,1,4, "BORROWED", "2024-02-10  6:15:00"),
(3,3,7, "RETURNED", "2024-02-12  11:1:00"),
(19,19,1, "RETURNED", "2024-02-27  12:15:00"),
(14,14,11, "BORROWED", "2024-03-17  1:15:00"),
(10,10,6, "BORROWED", "2024-03-01  12:15:00"),
(3,3,5, "BORROWED", "2024-06-22  5:15:00"),
(2,2,2, "RETURNED", "2024-07-11  17:15:00"),
(15,15,7, "BORROWED", "2024-06-30  18:15:00"),
(15,15,9, "BORROWED", "2024-05-27  19:15:00"),
(6,6,9, "BORROWED", "2024-02-13  10:15:00"),
(8,8,9, "RETURNED", "2024-02-10  11:15:00"),
(18,18,5, "BORROWED", "2024-04-27  12:50:00"),
(18,18,4, "RETURNED", "2024-05-27  7:16:00"),
(15,15,1, "RETURNED", "2024-01-27  02:30:00"),
(11,11,1, "BORROWED", "2024-02-27  14:45:00"),
(12,12,5, "BORROWED", "2024-02-27  13:30:00"),
(15,15,1, "RETURNED", "2024-02-27  11:00:00"),
(2,2,7, "BORROWED", "2024-02-27  09:00:00"),
(4,4,1, "BORROWED", "2024-02-27  12:00:00"),
(15,15,12, "RETURNED", "2024-02-27  15:30:00"),
(1,1,4, "RETURNED", "2024-02-10  07:45:00"),
(3,3,7, "BORROWED", "2024-02-12  10:30:00"),
(19,19,1, "BORROWED", "2024-02-27  16:00:00"),
(14,14,11, "RETURNED", "2024-03-17  05:15:00"),
(10,10,6, "RETURNED", "2024-03-01  16:00:00"),
(3,3,5, "RETURNED", "2024-06-22  08:45:00"),
(2,2,2, "BORROWED", "2024-07-11  14:30:00"),
(15,15,7, "RETURNED", "2024-06-30  20:00:00"),
(15,15,9, "RETURNED", "2024-05-27  21:30:00"),
(6,6,9, "RETURNED", "2024-02-13  09:00:00"),
(8,8,9, "BORROWED", "2024-02-10  13:00:00"),
(18,18,5, "RETURNED", "2024-04-27  14:30:00"),
(18,18,4, "BORROWED", "2024-05-27  06:45:00"),
(21, 7,3,"BORROWED", "2024-02-27  12:15:00"),
(21,7,1, "BORROWED", "2024-02-27  12:15:00"),

(22,4,3, "BORROWED", "2024-02-27  12:15:00"),

(23,2,8, "BORROWED", "2024-02-27  12:15:00"),

(24,11,6, "BORROWED", "2024-02-27  12:15:00"),

(24,11,12, "RETURNED", "2024-02-27 12:15:00");
