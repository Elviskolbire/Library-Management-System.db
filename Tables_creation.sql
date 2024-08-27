-- Creating  library tables such as books,Authors,records

CREATE TABLE Books
(
		id INT AUTO_INCREMENT PRIMARY KEY,
		Title VARCHAR(200) NOT NULL,
		Brand VARCHAR(100) ,
		Type VARCHAR(100),
		
		Quantity BIGINT NOT NULL CHECK( Quantity >= 0)	
);
--creating new Authors table
CREATE TABLE Authors
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	First_name VARCHAR(32) NOT NULL,
	Last_name VARCHAR(32),
	Country VARCHAR(50) NOT NULL,
	Gender ENUM("M","F") NOT NULL	
);

--Creating Records tables to store books records
CREATE TABLE Records
(
	id INT AUTO_INCREMENT PRIMARY KEY ,
	Books_id INT,
	Authors_id INT,
	Patron_id INT, 
	Process ENUM("BORROWED", "RETURNED") NOT NULL,
	date_time DATETIME NOT NULL,
	FOREIGN KEY (Books_id) REFERENCES Books(id),
	FOREIGN KEY (Patron_id) REFERENCES Patrons(id) ON DELETE CASCADE,
	FOREIGN KEY (Authors_id) REFERENCES Authors(id)	
);

CREATE TABLE Patrons
(
	id INT AUTO_INCREMENT,
	First_name VARCHAR(32) NOT NULL,
	Last_name VARCHAR(32),
	Phone_number VARCHAR(12) NOT NULL,
	City_address VARCHAR(50)NOT NULL,
	PRIMARY KEY(id)	
);
