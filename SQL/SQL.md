### Database Schema

**SQL is a programming language designed to manipulate and manage data stored in relational databases.**

- A relational database is a database that organizes information into one or more tables.
- A table is a collection of data organized into rows and columns.
---

> A relational database is a database that organizes information into one or more tables. Here, the relational database contains one table.
> A table is a collection of data organized into rows and columns. Tables are sometimes referred to as relations.  
> A statement is text that the database recognizes as a valid command. Statements always end in a semicolon ;.
> Clauses perform specific tasks in SQL. By convention, clauses are written in capital letters. Clauses can also be referred to as commands.[CREATE TABLE, FROM, SELECT]
> NULL is a special value in SQL that represents missing or unknown data.
> Constraints that add information about how a column can be used are invoked after specifying the data type for a column.  

---

### Data Type

- Integer
- Text 
- Date
- Real

---

### Statement 

- FROM 
- SELECT
- CREATE TABLE
- INSER INTO
- ALTER TABLE - adds a new column to a table
- UPDATE -> SET -> WHERE ;
- DELET FROM -> WHERE 
- AS -> allows to rename a column or table using alias
- DISTINCT -> filters out all duplicate values in the columns 

---

```sql 

CREATE TABLE table_name (
   column_1 data_type, 
   column_2 data_type, 
   column_3 data_type
);

 CREATE TABLE celebs (
   id INTEGER,
   name TEXT,
   age INTEGER
 );

INSERT INTO celebs (id, name, age)
VALUES (1, 'Justin Bieber', 22);

 ALTER TABLE celebs
 ADD COLUMN twitter_handle TEXT;

 UPDATE celebs
 SET twitter_handle = '@taylorswift13'
 WHERE id = 4;

DELETE FROM celebs
WHERE twitter_handle IS NILL;

 CREATE TABLE awards (
   id INTEGER PRIMARY KEY,
   recipient TEXT NOT NULL,
   award_name TEXT DEFAULT 'Grammy'
 );

SELECT name, genre, year
FROM movies;

SELECT name AS 'Original name:'
FROM movies;

SELECT DISTINCT year
FROM movies;

```

---

