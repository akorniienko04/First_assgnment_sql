DROP DATABASE Assignment_1;
CREATE DATABASE Assignment_1;

USE Assignment_1;

CREATE TABLE Departments(
department_id INT PRIMARY KEY,
cafedra_name VARCHAR(50) NOT NULL
);

CREATE TABLE Instructors(
instructor_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
department_id INT,
FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE Courses(
course_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
instructor_id INT,
FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id)
);

CREATE TABLE Students(
student_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age INT,
gpa INT check(gpa <= 100)
);

CREATE TABLE Enrollments(
enrollment_id INT PRIMARY KEY,
student_id INT,
course_id INT,
grade INT check(grade <= 100),
FOREIGN KEY (student_id) REFERENCES Students(student_id),
FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);


