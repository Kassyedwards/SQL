--Create all tables with relationships to one another
CREATE TABLE Departments
(
	Department_number VARCHAR(255) PRIMARY KEY,
	Department_name VARCHAR (255)	
);
	
CREATE TABLE Employee_Tenure
(
	Employee_number VARCHAR(255),
	Department_number VARCHAR(255),
	Start_date DATE,
	End_date DATE
);
CREATE TABlE Department_Manager
(
	Department_number VARCHAR(255),
	Employee_number VARCHAR(255),
	Start_date DATE,
	End_date DATE
);	
CREATE TABLE Employee_Information
(
	Employee_number VARCHAR(255),
	Birthday DATE,
	First_name VARCHAR(255),
	Last_name VARCHAR(255),
	Gender VARCHAR(255),
	Hire_date DATE,
	PRIMARY KEY (Employee_number, Hire_date)
);
		
CREATE TABLE Salaries
(
	Employee_number VARCHAR(255),
	Salary INTEGER,
	Start_date DATE,
	End_date DATE
);

CREATE TABLE Titles
(
	Employee_number VARCHAR(255),
	Title VARCHAR(255),
	Start_date DATE,
	End_date DATE
)