# 📚 Library Management Database System

Welcome to the **Library Management Database System** project! This project provides a comprehensive SQL script to create and manage a fully functional library database. Whether you’re managing books, authors, patrons, or tracking book borrowing activities, this database system has got you covered.

# Features

- **Books Management**: Efficiently stores information about all the books in the library, including titles, brands, types, and available quantities.
- **Authors Repository**: Maintains detailed records of authors, including their names, countries of origin, and genders.
- **Patrons Directory**: Captures essential details about library patrons, ensuring smooth operations when borrowing and returning books.
- **Borrowing Records**: Tracks the entire lifecycle of book borrowing and returning, with timestamps for precise records management.

## 🛠️ Getting Started

### Prerequisites

- MySQL or any SQL-compatible RDBMS
- Basic knowledge of SQL

### Installation

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/yourusername/library-management-system.git
   cd library-management-system
   ```

2. **Set Up the Database**:

   - Run the provided SQL script to set up the database:

   ```sql
   source library_database.sql;
   ```

3. **Insert Sample Data**:

   - The script includes sample data to populate the `Books`, `Authors`, `Patrons`, and `Records` tables, providing a ready-to-use environment for testing.

### Project Structure

- **`library_database.sql`**: The core SQL script that creates all necessary tables and inserts sample data.
- **`README.md`**: This document, explaining how to use the project.
- **`.gitignore`**: Ensures no unnecessary files are tracked.

## 📋 Table Overview

### Books Table

Stores essential information about each book in the library:

- **`id`**: Unique identifier for each book.
- **`Title`**: The title of the book.
- **`Brand`**: The publisher or brand of the book.
- **`Type`**: The genre or category of the book.
- **`Quantity`**: Available copies of the book.

### Authors Table

Captures the details of the authors of the books:

- **`id`**: Unique identifier for each author.
- **`First_name`**: The first name of the author.
- **`Last_name`**: The last name of the author.
- **`Country`**: The country of origin of the author.
- **`Gender`**: The gender of the author.

### Patrons Table

Records information about the library patrons:

- **`id`**: Unique identifier for each patron.
- **`First_name`**: The first name of the patron.
- **`Last_name`**: The last name of the patron.
- **`Phone_number`**: The contact number of the patron.
- **`City_address`**: The address of the patron.

### Records Table

Logs every borrowing and returning activity:

- **`id`**: Unique identifier for each record.
- **`Books_id`**: Foreign key referencing the `Books` table.
- **`Authors_id`**: Foreign key referencing the `Authors` table.
- **`Patron_id`**: Foreign key referencing the `Patrons` table.
- **`Process`**: Indicates whether the book was "BORROWED" or "RETURNED".
- **`date_time`**: Timestamp of the borrowing or returning action.

## 🔍 Queries & Reports

The script includes powerful SQL queries to generate reports and insights:

- **Total Books Borrowed**: A query to find out how many books have been borrowed.
- **Total Books Returned**: A query to check how many books have been returned.
- **Patron Activities**: A join query to retrieve a detailed list of activities for each patron, including the books they have borrowed or returned.

## 🧩 How It Works

This SQL script is designed to be simple yet powerful, providing a solid foundation for any library management system. Each table is carefully crafted with appropriate foreign key constraints to maintain data integrity.

### Example Usage

Run the following query to get a list of all books borrowed by a specific patron:

```sql
SELECT CONCAT(p.First_name, " ", p.Last_name) AS Patron_Name, 
b.Title, CONCAT(a.First_name, " ", a.Last_name) AS Author_Name, 
r.Process, r.date_time
FROM Patrons p
JOIN Records r ON r.Patron_id = p.id
JOIN Books b ON b.id = r.Books_id
JOIN Authors a ON a.id = r.Authors_id
WHERE p.First_name = 'Bire' AND p.Last_name = 'Elvis';
```

## 💡 Best Practices

- **Modularity**: Keep the SQL scripts modular to allow easy updates and maintenance.
- **Normalization**: Ensure that the database is normalized to reduce redundancy and improve performance.
- **Backup**: Regularly back up your database to avoid data loss.

## 📝 License

This project is licensed under the MIT License. Feel free to use, modify, and distribute it as per the terms of the license.

## 🎉 Acknowledgements
I here by acknowledge myself for improving in my skills
and thank you for your time on this repository 
