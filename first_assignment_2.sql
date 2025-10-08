USE Assignment_1;

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE Enrollments;
TRUNCATE TABLE Students;
TRUNCATE TABLE Courses;
TRUNCATE TABLE Instructors;
TRUNCATE TABLE Departments;

SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO Departments VALUES
(1, "Computer Science"),
(2, "Business Economics"),
(3, "Law"),
(4, "Psychology"),
(5, "Mathematics");

INSERT INTO Instructors VALUES
(1, "Temych",1),
(2, "Masik",2),
(3, "Artur",3),
(4, "Egor",4),
(5, "Polskii Masik",5),
(6, "Vania",1);

INSERT INTO Courses VALUES
(1, "Math", 1),
(2, "Literball", 2),
(3, "Trading", 3),
(4, "Statistic", 4),
(5, "Money Make", 5),
(6, "Football", 1),
(7, "Pravo EU", 6);

INSERT INTO Students VALUES
(1,"Alina", 19, 89), 
(2,"Vika", 20, 69),
(3,"Igor", 22, 92),
(4,"Alona", 17, 81),
(5,"Artem", 25, 89),
(6,"Maksim", 21, 87),
(7,"Marina", 18, 98),
(8,"Lena", 19, 78),
(9,"Sonia", 23, 62);

INSERT INTO Enrollments VALUES
(1, 1, 1, 65),
(2, 2, 2, 92),
(3, 3, 3, 100),
(4, 4, 5, 82),
(5, 5, 5, 61),
(6, 6, 6, 79),
(7, 7, 7, 99),
(8, 8, 2, 91),
(9, 9, 5, 82),
(10, 4, 1, 72),
(11, 5, 7, 93),
(12, 7, 4, 66),
(13, 8, 5, 54),
(14, 9, 2, 90),
(15, 1, 3, 72),
(16, 2, 6, 82),
(17, 3, 5, 72);






