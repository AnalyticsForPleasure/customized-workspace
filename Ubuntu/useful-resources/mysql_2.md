<p align="center">
  <img src="images/mysql/mysql.png" width="256" title="Some mysql love!">
</p>

<!--ts-->
   * [mysql cheetsheat](#mysql-cheetsheat)
      * [Basic &amp; essential tips:](#basic--essential-tips)
      * [Creating database](#creating-database)
      * [Creating tables](#creating-tables)
      * [Populating data into tables](#populating-data-into-tables)
         * [How to import a .sql file in MySQL?](#how-to-import-a-sql-file-in-mysql)
      * [Joins](#joins)
         * [Inner join](#inner-join)
         * [Left join](#left-join)
         * [Right join](#right-join)
         * [Right outer join](#right-outer-join)
         * [Left outer join](#left-outer-join)
         * [Full outer Join ( Using "Union" Mysql does't have Full outer Join)](#full-outer-join--using-union-mysql-doest-have-full-outer-join)
         * [Catersian Join](#catersian-join)
      * [Aggregate functions](#aggregate-functions)
      * [sub-queries](#sub-queries)
         * [Subqueries in the SELECT clause](#subqueries-in-the-select-clause)
         * [Subqueries in the FROM clause](#subqueries-in-the-from-clause)
         * [Subqueries in the WHERE clause](#subqueries-in-the-where-clause)
         * [Subqueries in the HAVING clause](#subqueries-in-the-having-clause)
         * [LIMIT function](#limit-function)
            * [Example #1: Find the earliest/latest birthday within a calendar year](#example-1-find-the-earliestlatest-birthday-within-a-calendar-year)
            * [Example #2 : Retrieve rows from <strong>middle</strong> result set, use the <strong>two-argument</strong> form of LIMIT.](#example-2--retrieve-rows-from-middle-result-set-use-the-two-argument-form-of-limit)
      * [Table Management](#table-management)
         * [Cloning a whole table](#cloning-a-whole-table)
         * [Cloning part of a table which matches a specific condition:](#cloning-part-of-a-table-which-matches-a-specific-condition)
         * [Create table with columns by specifying the other table's columns:](#create-table-with-columns-by-specifying-the-other-tables-columns)
         * [Copy specific columns to another table:](#copy-specific-columns-to-another-table)
         * [Using temporary tables](#using-temporary-tables)
            * [Add a COLUMN for an existing table + and adding AUTO_INCREMENT](#add-a-column-for-an-existing-table--and-adding-auto_increment)
            * [Changing the order of the columns in a table? (Swapping columns in existed table)](#changing-the-order-of-the-columns-in-a-table-swapping-columns-in-existed-table)
            * [Rename a column in a existed table](#rename-a-column-in-a-existed-table)
         * [Generating unique table names](#generating-unique-table-names)
   * [Partitions](#partitions)
      * [(a) Range partitioning](#a-range-partitioning)
      * [(b) List column partitioning](#b-list-column-partitioning)
      * [(c) List partitioning](#c-list-partitioning)
      * [(d) Columns range partitioning](#d-columns-range-partitioning)
      * [(e) Hash partitioning](#e-hash-partitioning)
      * [(f) Composite partitioning (Subpartitioning)](#f-composite-partitioning-subpartitioning)
   * [Indexes](#indexes)
      * [B-Tree indexes](#b-tree-indexes)
         * [Create table with index](#create-table-with-index)
         * [Create indexing on existing table](#create-indexing-on-existing-table)
         * [Drop indexing on existing table](#drop-indexing-on-existing-table)
   * [INFORMATION_SCHEMA](#information_schema)
      * [Finding specific column among all tables](#finding-specific-column-among-all-tables)
      * [Finding <strong>function</strong> and <strong>procedure</strong>](#finding-function-and-procedure)
      * [Finding all empty/unempty tables in a database](#finding-all-emptyunempty-tables-in-a-database)
      * [Show tables schema of specific database](#show-tables-schema-of-specific-database)
      * [Get table name and the table_type as : system_view, base table, view](#get-table-name-and-the-table_type-as--system_view-base-table-view)
      * [Get the number of tables in the database](#get-the-number-of-tables-in-the-database)
      * [Retrieves all views over the database](#retrieves-all-views-over-the-database)
      * [Finding all partitions](#finding-all-partitions)
      * [Get the index information for a given table](#get-the-index-information-for-a-given-table)
   * [User-Defined Functions (UDF)](#user-defined-functions-udf)
      * [Create function](#create-function)
      * [Delete function](#delete-function)
      * [Execute function](#execute-function)
      * [Creating multiple tables using stored procedure](#creating-multiple-tables-using-stored-procedure)
      * [Deleting multiple table using stored procedure](#deleting-multiple-table-using-stored-procedure)
   * [User-Defined Variables (UDV)](#user-defined-variables-udv)
      * [Example of using Variables](#example-of-using-variables)
   * [Views](#views)
      * [creating a view](#creating-a-view)
   * [REGEXP](#regexp)
      * [List the books names which starts with specific word](#list-the-books-names-which-starts-with-specific-word)
      * [List the books names which ends with specific word](#list-the-books-names-which-ends-with-specific-word)
      * [Number of books we have in the "book_name_in_english" column](#number-of-books-we-have-in-the-book_name_in_english-column)
      * [Cutting the user mail address to pieces - by using "SUBSTRING_INDEX" function](#cutting-the-user-mail-address-to-pieces---by-using-substring_index-function)
      * [Here we used the REGEXP and the like function in the select statement  - very nice](#here-we-used-the-regexp-and-the-like-function-in-the-select-statement----very-nice)
   * [JSON in mysql](#json-in-mysql)
      * [Basic Operations](#basic-operations)
         * [Create json array](#create-json-array)
         * [Create key-value](#create-key-value)
         * [Extract values from json](#extract-values-from-json)
         * [Get number of elements in json](#get-number-of-elements-in-json)
         * [Remove Quotes from a JSON Document](#remove-quotes-from-a-json-document)
         * [Merging json documents and preserving element's order](#merging-json-documents-and-preserving-elements-order)
      * [Integrating json documents with mysql tables](#integrating-json-documents-with-mysql-tables)
         * [Create a table linked to a json document](#create-a-table-linked-to-a-json-document)
         * [Insert values into json document](#insert-values-into-json-document)
         * [Retrieving json document in a mysql format table](#retrieving-json-document-in-a-mysql-format-table)
         * [Retrieving json document in a mysql format table with filtering](#retrieving-json-document-in-a-mysql-format-table-with-filtering)
         * [Aggregates a result set as a single JSON array whose elements consist of the rows](#aggregates-a-result-set-as-a-single-json-array-whose-elements-consist-of-the-rows)
         * [Reading two columns or expressions and shows them as a single JSON object](#reading-two-columns-or-expressions-and-shows-them-as-a-single-json-object)
         * [Converting json table to json file format document (Useful)](#converting-json-table-to-json-file-format-document-useful)
   * [Database maintaining](#database-maintaining)
      * [Create user](#create-user)
      * [Removing user](#removing-user)
   * [Useful website for coding online sql/mysql/postgresql](#useful-website-for-coding-online-sqlmysqlpostgresql)
   * [Compile c mysql client:](#compile-c-mysql-client)
   * [References](#references)

<!-- Added by: gil_diy, at: Sun 24 Jan 2021 00:29:37 IST -->

<!--te-->

# mysql cheetsheat


## Basic & essential tips:

1. Autocomplete and very efficient way is using `mycli`, so enter `mycli -u root`
2. In case you are using `datagrip` all files resides at: `~/.DataGrip2018.2/config/projects`

## Creating database
```
create database my_db;
```

## Creating tables

```sql
CREATE TABLE profile
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	name VARCHAR(20) NOT NULL,
	birth DATE,
	color ENUM('blue','red','green','brown','black','white'),
	foods SET('lutefisk','burrito','curry','eggroll','fadge','pizza'),
	cats INT,
	PRIMARY KEY (id)
);
```
Explanation between the difference between "ENUM" to "SET":

**ENUM** = radio fields (may only choose one)

**SET** = checkbox fields (may choose multiple)


## Populating data into tables

### How to import a .sql file in MySQL?

You can also import an .sql file as an already connected user to the database manner :

```sql
mysql> use your_database_name;
mysql> source fullpath_to_file.sql;
```

## Joins

<p align="center">
  <img src="images/mysql/tables_author_genre.png" width="500" title="Some mysql love!">
</p>

### Inner join
```sql
	select author_name,genre_name
	from author_tb
	inner join genre_tb
	on author_tb.genre_id = genre_tb.genre_id;
```
**output**

author_name | genre_name
----- | ---------
shay cohen	|Drama
Gil cohen	|Romance
gil cohen	|Science fiction
Yossi Levi	|Urban fiction
shay cohen	|Drama

**Note:**  INNER is optional above.  Simple JOIN is also considered as INNER JOIN

### Left join
```sql
	select *
	from author_tb
	left join genre_tb
	on author_tb.genre_id = genre_tb.genre_id;
```
**output**

author_name | genre_id | genre_id | genre_name
----- | ---|---|---
shay cohen|	|7	|7	|Drama
Gil cohen|	8	|8	|Romance
gil cohen|	4	|4	|Science fiction
Yossi Levi|	1	|1	|Urban fiction
shay cohen|	7	|7	|Drama
Omri Ror|	22	|	|

### Right join
```sql
	Select *
	from author_tb
	right join genre_tb
	on author_tb.genre_id = genre_tb.genre_id;
```
**output**

author_name | genre_id | genre_id | genre_name
----- | ---|---|---
shay cohen	|7	|7	|Drama
Gil cohen	|8	|8	|Romance
gil cohen	|4	|4	|Science fiction
Yossi Levi	|1	|1	|Urban fiction
shay cohen	|7	|7	|Drama
			||	2	|Tragedy
			||	3	|Fantasy
			||	5	|Adventure
			||	6	|Mystery
			||	9	|Horror
			||	10	|Dystopia
			||	11	|Action


### Right outer join
```sql
	select *
	from author_tb
	right outer join genre_tb
	on author_tb.genre_id = genre_tb.genre_id
	where author_tb.author_name is Null;
```

**output**

author_name | genre_id | genre_id | genre_name
----- | ---|---|---
	||2	|Tragedy
	||3	|Fantasy
	||5	|Adventure
	||6	|Mystery
	||9	|Horror
	||10	|Dystopia
	||11	|Action


### Left outer join
```sql
	select *
	from author_tb
	left outer join genre_tb
	on author_tb.genre_id = genre_tb.genre_id
	Where genre_tb.genre_name is Null;
```

**output**

author_name | genre_id | genre_id | genre_name
----- | ---|---|---
Omri Ror |	22	||

### Full outer Join ( Using "Union" Mysql does't have Full outer Join)
```sql
	select *
	from author_tb
	left join genre_tb
	on author_tb.genre_id = genre_tb.genre_id
	Union
	select *
	from author_tb
	right join genre_tb
	on author_tb.genre_id = genre_tb.genre_id;
```

### Catersian Join
The CARTESIAN JOIN is also known as CROSS JOIN. In a CARTESIAN JOIN there is a join for each row of one table to every row of another table.
https://www.geeksforgeeks.org/sql-join-cartesian-join-self-join/

## Aggregate functions
```sql
SELECT publisher,
      COUNT(pages) AS n,
      IFNULL(SUM(pages),0) AS total,
      IFNULL(AVG(pages),0) AS average,
      IFNULL(MAX(pages),'Unknown') AS highest
FROM simania_books_table
WHERE pages IS not  NULL and year_published = '2018'
GROUP BY publisher
order by n desc;
```
## sub-queries

### Subqueries in the SELECT clause


### Subqueries in the FROM clause
```sql
select *
from (select *
      from Book_details
      where author_id > 5) as book_dit;
```
### Subqueries in the WHERE clause
```sql
select *
from Book_details
where book_id in (select book_id
                  from Book_details
                  WHERE book_id > 7);
```
### Subqueries in the HAVING clause

### LIMIT function
When should we use the "LIMIT"?
In case we want only certain rows from a result set, such as the first row, the last five rows, or rows
21 through 40.
Here we will Use a LIMIT with an ORDER BY.

#### Example #1: Find the earliest/latest birthday within a calendar year
```sql
SELECT name, DATE_FORMAT(birth,'%m-%d') AS birthday
FROM profile
ORDER BY birthday LIMIT 1;
```

#### Example #2 : Retrieve rows from **middle** result set, use the **two-argument** form of LIMIT.

First Argument indicates how many rows to skip
Second Argument indicates how many to rows to retrieve
**What is the third-smallest or third-largest value?**
```sql
SELECT *
FROM profile
ORDER BY birth LIMIT 2,1;
```
Example number 3 :

Calculating LIMIT Values from Expressions -- ask gil page 125

##  Table Management

### Cloning a whole table
<!-- ```sql
CREATE TABLE new_table LIKE original_table;
``` -->
Cloning the contents to be the same as the original table:
```sql
INSERT INTO new_table SELECT * FROM original_table;
```

### Cloning part of a table which matches a specific condition:
If I want to copy part of the table use the "where":
```sql
CREATE TABLE mail2 LIKE mail;
INSERT INTO mail2 SELECT * FROM mail WHERE srcuser = 'barb';
```
<!-- **Important to remember:** --
Using "CREATE TABLE … LIKE"  :

1) Doesn't copy *foreign key definitions*

2) Doesn't copy any *DATA DIRECTORY*

3) Doesn't copy *INDEX DIRECTORY table options* that the table might use saving a Query Result in a Table -->

### Create table with columns by specifying the other table's columns:
```sql
CREATE TABLE book_name_tb SELECT book_id,title  FROM simania_books_table;
```

### Copy specific columns to another table:
```sql
INSERT INTO dst_tbl(column1_dst, column2_dst) SELECT val, name FROM src_tbl;
```


### Using temporary tables

#### Add a COLUMN for an existing table + and adding AUTO_INCREMENT
```sql
ALTER TABLE foreign_author_tb
ADD COLUMN foreign_author_id INT AUTO_INCREMENT PRIMARY KEY;
```
The "AUTO_INCREMENT" would  work only after adding a PRIMARY KEY over the specific column "foreign_author_id"

#### Changing the order of the columns in a table? (Swapping columns in existed table)
```sql
ALTER TABLE Employees MODIFY COLUMN empName VARCHAR(50) AFTER department;
```
#### Rename a column in a existed table
```sql
ALTER TABLE foreign_author_tb RENAME COLUMN author TO author_name;
```

### Generating unique table names

# Partitions

## (a) Range partitioning

Selects a partition by determining if the partitioning **key is inside a certain range**. An example could be a partition for all rows where the column zipcode has a value between 70000 and 79999.

```sql
CREATE TABLE employees
(
  id         int,#unsigned auto_increment primary key,
  first_name VARCHAR(30),
  hired      DATE NOT NULL DEFAULT '1970-01-01',
  separated  DATE NOT NULL DEFAULT '2001-12-31',
  store_id   INT
)
  PARTITION BY RANGE (year(separated))(
    PARTITION p0 VALUES LESS THAN (1968),
    PARTITION p1 VALUES LESS THAN (1981),
    PARTITION p2 VALUES LESS THAN (2001),
    PARTITION p3 VALUES LESS THAN MAXVALUE
    );
```
```sql
INSERT INTO employees (first_name, hired, separated, store_id)
  VALUES
  ('shay', '1970-01-01', '1979-01-01', 11),
  ('Gil', '1949-01-01', '1959-01-01', 4),
  ('Yossi', '1949-01-01', '1967-01-01', 7),
  ('Omri', '1989-01-01', '1998-01-01', 5),
  ('Michal', '1984-01-01', '1989-06-01', 12);
```
```sql
select * from employees partition(p0);
```


## (b) List column partitioning

This is a variant of LIST partitioning BUT:
1. Enables the use of **multiple columns** as partition keys
2. The columns of data types **can be other than integer types** to be used as partitioning columns.

##
```sql
CREATE TABLE employee_4
(
  id           INT,
  first_name   VARCHAR(25),
  joining_year INT,
  designation  VARCHAR(100)
  #age VARCHAR(10)
)
  PARTITION BY LIST COLUMNS (joining_year, designation) (
    PARTITION pRegion_1 VALUES IN ((2008, 'Sustainability Analyst'), (2009, 'Accounting Assistant')),
    PARTITION pRegion_2 VALUES IN ((2007, 'Linux Engineer'), (2003, 'Application Developer')));
```

```sql

INSERT INTO employee_4 (id, first_name, joining_year, designation)
  VALUES
  (5, 'shay', '2008', 'Sustainability Analyst'),
  (7, 'Gil', '2009', 'Accounting Assistant'),
  (22, 'Yossi', '2003', 'application Developer'),
  (22, 'Yossi', '2007', 'Linux Engineer');
```
```sql
select *
from employee_4 partition (pRegion_2);
```

## (c) List partitioning

A partition is assigned a list of values. If the partitioning **key has one of these values**, the partition is chosen. For example, all rows where the column Country is either Iceland, Norway, Sweden, Finland or Denmark could build a partition for the Nordic countries.


**Attention:** In MySQL 8.0, it is possible to match against **only a list of integers**

```sql
CREATE TABLE employees_2 (
    id INT ,#NOT NULL,
    first_name VARCHAR(30),
    hired DATE NOT NULL DEFAULT '1970-01-01',
    separated DATE NOT NULL DEFAULT '9999-12-31',
    store_id INT
)
PARTITION BY LIST(store_id) (
    PARTITION pNorth VALUES IN (3,5,6,9,17),
    PARTITION pEast VALUES IN (1,2,10,11,19,20),
    PARTITION pWest VALUES IN (4,12,13,14,18),
    PARTITION pCentral VALUES IN (7,8,15,16)
);
```

```sql
INSERT INTO employees_2 (id,first_name, hired, separated, store_id)
  VALUES
  (5,'shay', '1970-01-01', '1979-01-01', 11),
  (7,'Gil', '1949-01-01', '1959-01-01', 4),
  (22,'Yossi', '1949-01-01', '1967-01-01', 7),
  (1,'Omri', '1989-01-01', '1998-01-01', 5),
  (14,'Michal', '1984-01-01', '1989-06-01', 12);
```
```sql
select * from employees_2 partition(pWest);
```

## (d) Columns range partitioning
```sql
CREATE TABLE employees_3 (
    id INT ,
    first_name VARCHAR(30),
    hired DATE NOT NULL DEFAULT '1970-01-01',
    separated DATE NOT NULL DEFAULT '9999-12-31',
    store_id INT
)
PARTITION BY RANGE COLUMNS(id,store_id)(
PARTITION partition0 VALUES LESS THAN (3,6),
PARTITION partition1 VALUES LESS THAN (6,12),
PARTITION partition2 VALUES LESS THAN (12,18),
PARTITION partition3 VALUES LESS THAN (MAXVALUE, MAXVALUE));
```
```sql
INSERT INTO employees_3 (id,first_name, hired, separated, store_id)
  VALUES
  (5,'shay', '1970-01-01', '1979-01-01', 11),
  (7,'Gil', '1949-01-01', '1959-01-01', 4),
  (22,'Yossi', '1949-01-01', '1967-01-01', 7),
  (1,'Omri', '1989-01-01', '1998-01-01', 5),
  (14,'Michal', '1984-01-01', '1989-06-01', 12);
```
```sql
select *
from employees_3 partition(partition1);
```

## (e) Hash partitioning

Applies a hash function to some attribute that yields the partition number. This strategy allows exact-match queries on the selection attribute to be processed by exactly one node and all other queries to be processed by all the nodes in parallel.

```sql
CREATE TABLE employees_5 (
    id INT ,#NOT NULL,
    first_name VARCHAR(30),
    hired DATE NOT NULL DEFAULT '1970-01-01',
    separated DATE NOT NULL DEFAULT '9999-12-31',
    store_id INT
)
PARTITION BY HASH(store_id)
PARTITIONS 4;
```

```sql
INSERT INTO employees_5 (id,first_name, hired, separated, store_id)
  VALUES
  (5,'shay', '1970-01-01', '1979-01-01', '11'),
  (7,'Gil', '1949-01-01', '1959-01-01', '4'),
  (22,'Yossi', '1949-01-01', '1967-01-01', '7'),
  (1,'Omri', '1989-01-01', '1998-01-01', '5'),
  (14,'Michal', '1984-01-01', '1989-06-01', '12');
```
**Attention:** for retrieving the partitions names in all tables you can use the INFORMATION SCHEMA.
including a [link to the header](#finding-all-partitions).
By default the partition names are given as: p0,..,pn


```sql
select *
from  employees_5 partition(p0);
```



## (f) Composite partitioning (Subpartitioning)

Allows for certain combinations of the above partitioning schemes, by for example first applying a range partitioning and then a hash partitioning

```sql
CREATE TABLE purchase_tb (id INT, purchased DATE)
PARTITION BY RANGE( YEAR(purchased) )
SUBPARTITION BY HASH( TO_DAYS(purchased) )
SUBPARTITIONS 2 (
PARTITION p0 VALUES LESS THAN (1990),
PARTITION p1 VALUES LESS THAN (2000),
PARTITION p2 VALUES LESS THAN MAXVALUE
);
```
```sql
INSERT INTO purchase_tb (id,purchased)
  VALUES
  (1, '2001-01-24'),
  (2, '1999-11-21'),
  (3, '1989-10-11'),
  (4, '2018-09-18');
```

```sql
select *
from purchase_tb partition (p1);
```


# Indexes

<!-- ## Sparse indexes

## Dense indexes

## Hash indexes -->

## B-Tree indexes

For indexing a database mysql can use an underline structure called b-tree.
The b-tree creates under the hood a tree of **intermediate nodes** which assist the engine to retrieve the relevant row(s). at the bottom of the tree are the **leafs of the tree which are the actual data rows**, each of the leaf node is also known as a **page (8KB)** in sql server. The data is stored in **sorted order by cluster key**. by default the primary key of a table will be the cluster key in sql server.


<p align="center">
  <img src="images/mysql/clustered-index-structure.png" width="700" title="Some mysql love!">
</p>

* In case we execute a query on a table which **was not indexed**, the operation will be **costly (CPU,IO)**  - this scan is named: **Full Scan (All)**.

* In case we execute a query on a table which **was indexed with btree**, the operation will be much more efficient - this scan is named: **Unique Index scan (ref)**.


### Create table with index
```sql
CREATE TABLE books_table
(
  id                 int unsigned auto_increment primary key,
  title              varchar(200),
  author             varchar(200),
  publisher          varchar(100),
  INDEX index_title(title)
);
```

**Attention:** in the round brackets comes the column'(s) names.

Moreover you can composite(group) index on few columns together, i.e:

```sql
INDEX index_composite(title,author)
```

### Create indexing on existing table

```sql
CREATE INDEX index_title ON books_table(title);
```
### Drop indexing on existing table
```sql
DROP INDEX index_title ON books_table;
```



# INFORMATION_SCHEMA

## Finding specific column among all tables

```sql
SELECT TABLE_NAME
FROM   AdventureWorks2012_Data.INFORMATION_SCHEMA.COLUMNS
WHERE  COLUMN_NAME = 'BusinessEntityID'
```
## Finding **function** and **procedure**
```sql
SELECT ROUTINE_TYPE, ROUTINE_NAME
FROM INFORMATION_SCHEMA.ROUTINES
WHERE ROUTINE_SCHEMA = 'shay_practice_mysql';
```

## Finding all empty/unempty tables in a database
```sql
SELECT *
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_ROWS =  '0'
AND TABLE_SCHEMA = 'my_database_only'
```

## Show tables schema of specific database
```sql
SELECT * ##`table_schema`
FROM `information_schema`.`tables`
WHERE table_schema = 'db_playground';
```

## Get table name and the table_type as : system_view, base table, view
```sql
SELECT   TABLE_NAME, TABLE_TYPE
FROM     INFORMATION_SCHEMA.TABLES
ORDER BY TABLE_NAME;
```

## Get the number of tables in the database
```sql
SELECT count(*) AS totalTables
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'db_playground';
```
## Retrieves all views over the database
```sql
SELECT  *
FROM    INFORMATION_SCHEMA.VIEWS
```

## Finding all partitions
```sql
SELECT TABLE_NAME,PARTITION_NAME,TABLE_ROWS,AVG_ROW_LENGTH,DATA_LENGTH
FROM INFORMATION_SCHEMA.PARTITIONS
where PARTITION_NAME <> "";
```

## Get the index information for a given table

```sql
SELECT DISTINCT TABLE_NAME,INDEX_NAME
FROM INFORMATION_SCHEMA.STATISTICS
WHERE TABLE_NAME = 'author_name';
```

# User-Defined Functions (UDF)
## Create function
```sql
DELIMITER |
CREATE FUNCTION my_dummy_function(author_id INT)
  RETURNS VARCHAR(10)
  DETERMINISTIC
BEGIN
  DECLARE rv_in_letters VARCHAR(10);
  IF author_id = 1
  THEN
    SET rv_in_letters = 'One';
  ELSEIF author_id = 2
  THEN
    SET rv_in_letters = 'Two';
  ELSE
    SET rv_in_letters = 'Larger';
  END IF;
  RETURN rv_in_letters;
END |
```
## Delete function
```sql
drop function my_dummy_function;
```

## Execute function
```sql
SELECT book_id, book_name,author_id, my_dummy_function(author_id)
FROM book_info;
```
## Creating multiple tables using stored procedure
```sql
DROP PROCEDURE sp_creating_multiple_tables;
```
```sql
DELIMITER $$
CREATE PROCEDURE sp_creating_multiple_tables(database_look_for VARCHAR(255), IN tables_names json)
BEGIN
  DECLARE len INT DEFAULT JSON_LENGTH(tables_names);
  DECLARE i INT DEFAULT 0;
  DECLARE array_at VARCHAR(5);
  WHILE i < len DO
    set @array_at = concat('$[', i, ']');
    set @table_name = concat('table_',JSON_UNQUOTE(JSON_EXTRACT(tables_names, @array_at)),'_class');
    set @string_of_table_names := CONCAT('CREATE TABLE ', @table_name, ' (pupil_id               int unsigned auto_increment primary key,\
                                                                          pupil_name             VARCHAR(200),\
                                                                          class_name             VARCHAR(200));');
    PREPARE stmt from @string_of_table_names;

    EXECUTE stmt;
    set i = i + 1;
  END WHILE;
END $$
DELIMITER ;
```
```sql
set @list_names := JSON_ARRAY('shay', 'gil','lital','lior','or','yarden','yakov','ahuva');
```
```sql
CALL sp_creating_multiple_tables('db_playground', @list_names);
```

## Deleting multiple table using stored procedure
```sql
DROP PROCEDURE sp_dropping_multiple_tables;

DELIMITER $$
CREATE PROCEDURE sp_dropping_multiple_tables(database_look_for VARCHAR(255), table_name_regex VARCHAR(255))
BEGIN
  SELECT @string_of_table_names := CONCAT('drop table ', GROUP_CONCAT(TABLE_NAME))
  FROM information_schema.tables
  WHERE TABLE_SCHEMA = database_look_for
    AND TABLE_NAME REGEXP table_name_regex;

  PREPARE stmt from @string_of_table_names;
  EXECUTE stmt;
  DROP prepare stmt;
END $$
DELIMITER ;
```
```sql
CALL sp_dropping_multiple_tables('db_playground', '^table_[a-z]+_*[a-z]*_class$');
```

# User-Defined Variables (UDV)
## Example of using Variables

```sql
SELECT @min_year_published:=MIN(year_published),@max_year_published:=MAX(year_published)
FROM simania_books_table;

SELECT title , author , pages , year_published
FROM simania_books_table
WHERE year_published=@min_year_published OR
      year_published=@max_year_published;
```

# Views
## creating a view



# REGEXP
## List the books names which starts with specific word
```sql
SELECT book_name_in_english
FROM simania_and_crawler_foreign_tb
WHERE book_name_in_english REGEXP '^rain';
```
*Pay attention it's case insensitive

## List the books names which ends with specific word
```sql
SELECT book_name_in_english
FROM simania_and_crawler_foreign_tb
WHERE book_name_in_english REGEXP 'God$';
```

## Number of books we have in the "book_name_in_english" column
```sql
SELECT distinct (book_name_in_english)
FROM simania_and_crawler_foreign_tb
WHERE book_name_in_english REGEXP '[a-z]'
```


## Cutting the user mail address to pieces - by using "SUBSTRING_INDEX" function
```sql
SET @email = 'shaycohen@hotmail.com';
SELECT @email,
SUBSTRING_INDEX(@email,'@',1) AS user,
SUBSTRING_INDEX(@email,'@',-1) AS host;
```

## Here we used the REGEXP and the like function in the select statement  - very nice
```sql
SELECT book_name_in_hebrew, book_name_in_hebrew LIKE 'בית%', book_name_in_hebrew REGEXP 'בית'
FROM simania_and_crawler_foreign_tb;
```

# JSON in mysql

## Basic Operations

###  Create json array
```sql
set @data:=JSON_ARRAY('new-york', 'orlando', 'new-jersey');
```

### Create key-value

Create list of key-value pairs and returns a JSON object containing those pairs

```sql
SET @data = JSON_OBJECT('private_name', 'Yossi','family_name','Cohen');
SELECT @data;
```

**Output:**

```json
{"family_name": "Cohen", "private_name": "Yossi"}
```


### Extract values from json

* Single values:
```sql
SELECT JSON_EXTRACT(@data, '$[1]')
```

* Multiple values:

```sql
SELECT JSON_EXTRACT(@data, '$[1 to 2]')
```

* Extracting the values from jsons maps:
```sql
SELECT JSON_EXTRACT('{"France": "Paris", "Israel": "Jerusalem", "America": ["New-York", "Miami", "LA"]}', '$.*');
```


**Reminder:** index array starts from zero.

### Get number of elements in json
```sql
select @len:=json_length(@data);
```

### Remove Quotes from a JSON Document
```sql
SET @Person_Name = '"Shay Cohen"';
SELECT
  @Person_Name Original,
  JSON_UNQUOTE(@Person_Name) Unquoted;
```

### Merging json documents and preserving element's order

```sql
SELECT JSON_MERGE_PRESERVE('{ "a": 1, "b": 2 }','{ "a": 3, "c": 4 }','{ "a": 5, "d": 6 }');
```

**Output**

```json
{"a": [1, 3, 5], "b": 2, "c": 4, "d": 6}
```

## Integrating json documents with mysql tables

### Create a table linked to a json document
```sql
CREATE TABLE my_table_from_document(json_col JSON);
```
### Insert values into json document
```sql
INSERT INTO my_table_from_document VALUES (
    '{ "people": [
        { "name":"John Smith",  "address":"780 Mission St, San Francisco, CA 94103"},
        { "name":"Sally Brown",  "address":"75 37th Ave S, St Cloud, MN 94103"},
        { "name":"John Johnson",  "address":"1262 Roosevelt Trail, Raymond, ME 04071"}
     ] }');
```

**Output json document**

```json
{"people": [{"name": "John Smith", "address": "780 Mission St, San Francisco, CA 94103"}, {"name": "Sally Brown", "address": "75 37th Ave S, St Cloud, MN 94103"}, {"name": "John Johnson", "address": "1262 Roosevelt Trail, Raymond, ME 04071"}]}
```


### Retrieving json document in a mysql format table
```sql
SELECT people.*
FROM my_document,
     JSON_TABLE(json_col, '$.people[*]' COLUMNS (
                name_col VARCHAR(40)  PATH '$.name',
                address_col VARCHAR(100) PATH '$.address')
     ) people;
```
**Output json Table**

name_col | address_col
----- | ---------
John Smith | 780 Mission St, San Francisco, CA 94103
Sally Brown | 75 37th Ave S, St Cloud, MN 94103
John Johnson | 1262 Roosevelt Trail, Raymond, ME 04071


### Retrieving json document in a mysql format table with filtering
```sql
SELECT people.*
FROM my_tb,
     JSON_TABLE(json_col, '$.people[*]' COLUMNS (
                name_col VARCHAR(40)  PATH '$.name',
                address_col VARCHAR(100) PATH '$.address')
     ) people
WHERE people.name LIKE 'John%';
```

**Output json Table**

name_col | address_col
----- | ---------
John Smith | 780 Mission St, San Francisco, CA 94103
John Johnson | 1262 Roosevelt Trail, Raymond, ME 04071


### Aggregates a result set as a single JSON array whose elements consist of the rows

**MySQL Format table**

Given the following mysql table:

id | attribute | attribute
----- | --------- | ---------
2 |color|red
2|fabric|American
3|color|green
3|shape|square

**After Aggregation operation**

```sql
SELECT o_id, JSON_ARRAYAGG(attribute) AS attributes
FROM Classifier
GROUP BY id;
```
_Output_

id | attribute
----- | ---------
2 | ["color", "fabric"]
3 | ["color", "shape"]


### Reading two columns or expressions and shows them as a single JSON object
*Using JSON_OBJECTAGG*
```sql
SELECT id, JSON_OBJECTAGG(attribute, value) AS attributes_and_value
FROM Classifier
GROUP BY id;
```

_Output_

id | attributes_and_value
----- | ---------
2 | \{"color": "red", "fabric": "American"\}
3 | \{"color": "green", "shape": "square"\}




### Converting json table to json file format document (Useful)

```sql
SELECT JSON_OBJECT("people", JSON_ARRAYAGG(JSON_OBJECT("name", name_col, "address", address_col))) json_doc
FROM my_tb,
     JSON_TABLE(json_col, '$.people[*]' COLUMNS (
                name_col VARCHAR(40)  PATH '$.name',
                address_col VARCHAR(100) PATH '$.address')
     ) people
WHERE people.name LIKE 'John%';
```


# Database maintaining
[Link](https://kyup.com/tutorials/create-new-user-grant-permissions-mysql/)
## Create user
## Removing user

# Useful website for coding online sql/mysql/postgresql
[sqlfiddle](www.sqlfiddle.com)

# Compile c mysql client:

[Great reference](https://zetcode.com/db/mysqlc/)

# References
[mysql-json-functions](http://dasini.net/blog/2018/07/23/30-mins-with-mysql-json-functions/)
