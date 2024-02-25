-- This is a SQL script file containing commands and queries

-- Create a new database
CREATE DATABASE SampleDatabase;

-- Use the newly created database
USE SampleDatabase;

-- Create a new table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

-- Insert some records into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary) VALUES
(1, 'John', 'Doe', 'Sales', 50000.00),
(2, 'Jane', 'Smith', 'Marketing', 55000.00),
(3, 'Alice', 'Johnson', 'HR', 60000.00);

-- Update a record in the Employees table
UPDATE Employees SET Salary = 52000.00 WHERE EmployeeID = 1;

-- Delete a record from the Employees table
DELETE FROM Employees WHERE EmployeeID = 3;

-- Select all records from the Employees table
SELECT * FROM Employees;

-- Select employees whose salary is greater than 55000
SELECT * FROM Employees WHERE Salary > 55000.00;

-- Select the average salary of employees
SELECT AVG(Salary) AS AverageSalary FROM Employees;

-- The % is a wild-card it can match any characters. E.g. In this case any data starting with 'D'
SELECT * FROM Employees;
  WHERE data LIKE 'D%'






