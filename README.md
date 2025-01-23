# SQL Database Project

This project contains SQL scripts to create and manage a database, along with data insertion and manipulation examples. It serves as a foundation for understanding and working with relational databases.

---

## Project Structure

The SQL file includes the following:
1. **Table Creation**:
   - Example: `BRANCHID` table with fields:
     - `BRANCHHEADID` (Number, Primary Key)
     - `NAME` (String, up to 50 characters)
     - `CONTACT` (Number, 10 digits)

2. **Data Insertion**:
   - Sample entries for the `BRANCHID` table:
     - Example: `INSERT INTO BRANCHID VALUES (101, 'Aarav Desai', 8615153531);`

3. **Data Manipulation**:
   - Select statements to query data:
     - Example: `SELECT * FROM BRANCHID;`
   - Alterations to tables:
     - Example: `ALTER TABLE`.

---

## Prerequisites

- **Database Management System (DBMS)**:
  - Ensure you have a DBMS like MySQL, PostgreSQL, or Oracle Database installed to execute these scripts.
  
- **SQL Client**:
  - Tools like MySQL Workbench, DBeaver, or command-line SQL clients can be used to interact with the database.

---

## How to Use

1. **Setup the Database**:
   - Run the `CREATE TABLE` commands in your SQL client to set up the necessary tables.

2. **Insert Data**:
   - Use the `INSERT INTO` commands provided to populate the database with sample data.

3. **Query Data**:
   - Use the `SELECT` statements to retrieve and inspect data.

4. **Modify Schema**:
   - Use the `ALTER TABLE` commands to modify the database structure as needed.

---

## Example Usage

1. To create the `BRANCHID` table:
   ```sql
   CREATE TABLE BRANCHID(
       BRANCHHEADID NUMBER(4),
       NAME VARCHAR(50),
       CONTACT NUMBER(10)
   );
