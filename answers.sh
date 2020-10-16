BASIC QUERIES:
1-SELECT name FROM students;
2-SELECT * FROM students WHERE Age>30;
3-SELECT * FROM students WHERE age =30 AND gender = "F";//none
4-SELECT Name,Points FROM students WHERE Name="Alex";
5-INSERT INTO students (Name, Age, Gender, Points) VALUES("Farah", 21, "F", 1000);
6-UPDATE students SET points=(points+20) WHERE name="Basma";
7-UPDATE students SET points=(points-10) WHERE name="Alex"; 


CREATING TABLE:

CREATE TABLE "graduates" (
	"Id"	INTEGER NOT NULL ,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Points"	INTEGER,
	"Graduation"	TEXT,
	PRIMARY KEY("Id" AUTOINCREMENT)
);

copying data :
INSERT INTO  graduates (Id,Name,Age,Gender,Points)
SELECT Id,Name,Age,Gender,Points FROM students
WHERE name='Layal';

Inserting the graduation date:
UPDATE graduates
SET Graduation = '08/09/2018'
WHERE name='Layal';

Deleting record :
DELETE FROM students WHERE name='Layal';



JOINS:

1-SELECT employees.name, employees.Company, companies.Date
FROM (employees
INNER JOIN companies ON employees.Company = companies.name);

OR: CREATE TABLE companyDetails AS SELECT employees.name, employees.Company, companies.Date FROM (employees INNER JOIN companies ON employees.Company = companies.Name);

2-SELECT employees.name, employees.Company, companies.Date
FROM (employees
INNER JOIN companies ON employees.Company = companies.name AND Date<2000);

3-SELECT employees.name, companies.name,employees.Role
FROM (employees
INNER JOIN companies ON employees.Company = companies.name )
WHERE employees.Role='Graphic Designer';


COUNT AND FILTER:
1-SELECT MAX(points),name
FROM students;

2-SELECT AVG(Points)
FROM students;

3-SELECT COUNT(Points)
FROM students
WHERE points=500;

4-SELECT name
FROM students
WHERE name LIKE '%s%';

5-SELECT name, points
FROM students 
ORDER BY points DESC;

