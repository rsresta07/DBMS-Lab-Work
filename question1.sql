CREATE DATABASE db_info;
CREATE TABLE tbl_student (sid INT PRIMARY KEY, NAME VARCHAR(50), gender VARCHAR(50), faculty VARCHAR(50), email VARCHAR(50),phone INT, fee DOUBLE);
ALTER TABLE tbl_student ADD recentdegree VARCHAR(50);
ALTER TABLE tbl_student ADD specialization VARCHAR(50);

ALTER TABLE tbl_student MODIFY COLUMN phone VARCHAR(50);
ALTER TABLE tbl_student CHANGE COLUMN phone contact VARCHAR(50);

INSERT INTO tbl_student VALUES (1, 'Ram', 'Male', 'BCA', 'ram@gmail.com', '9841435465', 400000, '+2', 'Science');
INSERT INTO tbl_student VALUES (2, 'Kumari', 'Female', 'BIT', 'kumari@gmail.com', '9861549837', 120000, '+2', 'Management');
INSERT INTO tbl_student VALUES (3, 'Sita', 'Female', 'BIM', 'Site@gmail.com', '9860328749', 500000, '+2', 'Management');
INSERT INTO tbl_student VALUES (4, 'Sam', 'Male', 'CSIT', 'Sammy@gmail.com', '9861435465', 300000, '+2', 'Science');
INSERT INTO tbl_student VALUES (5, 'Kumar', 'Male', 'BCA', 'kumar@gmail.com', '9803437655', 632000, '+2', 'Science');
INSERT INTO tbl_student VALUES (6, 'Ram', 'Male', 'CSIT', 'ram@gmail.com', '9841989732', 90000, '+2', 'Management');
INSERT INTO tbl_student VALUES (7, 'Salin', 'Male', 'BIM', 'onepunch@gmail.com', '9841435837', 120000, '+2', 'Management');
INSERT INTO tbl_student VALUES (8, 'Sworiya', 'Female', 'MBA', 'Sworiyamaam@gmail.com', '986198232', 100000, 'Bachelor', 'BCA');
INSERT INTO tbl_student VALUES (9, 'Prayana', 'Male', 'MBA', 'faze@gmail.com', '9841438763', 200000, 'Bachelors', 'CSIT');
INSERT INTO tbl_student VALUES (10, 'Ritisha', 'Female', 'SE', 'ritisha@gmail.com', '9841823465', 85000, 'Bachelors', 'CSIT');
INSERT INTO tbl_student VALUES (11, 'Sonali', 'Female', 'BCA', 'chauchau@gmail.com', '9860234589', 100000, '+2', 'Science');
INSERT INTO tbl_student VALUES (12, 'Ashna', 'Female', 'BCA', 'ashnaaa@gmail.com', '9861982309', 150000, '+2', 'Management');
INSERT INTO tbl_student VALUES (13, 'Ram', 'Male', 'MIT', 'ramuu@gmail.com', '9861982343', 100000, 'Bachelors', 'CSIT');
INSERT INTO tbl_student VALUES (14, 'Binaya', 'Male', 'BIM', 'warlord@gmail.com', '9851238934', 20000, '+2', 'Science');
INSERT INTO tbl_student VALUES (15, 'Samman', 'Male', 'CSIT', 'Samman@gmail.com', '9850239845', 400000, '+2', 'Science');
INSERT INTO tbl_student VALUES (16, 'Janaki', 'Female', 'BIM', 'jannki@gmail.com', '9851239845', 650000, '+2', 'Science');
INSERT INTO tbl_student VALUES (17, 'Hari', 'Male', 'CSIT', 'hariram@gmail.com', '9841483465', 50000, '+2', 'Science');
INSERT INTO tbl_student VALUES (18, 'Roman', 'Male', 'BIM', 'rome@gmail.com', '9841435342', 65500, '+2', 'Management');
INSERT INTO tbl_student VALUES (19, 'Hari', 'Male', 'BCA', 'hari@gmail.com', '9841874738', 100050, '+2', 'Science');
INSERT INTO tbl_student VALUES (20, 'Salin', 'Male', 'BCA', 'salini@gmail.com', '9861345465', 120000, '+2', 'Science');

UPDATE tbl_student SET NAME ='Sagar', gender='Male', email='sagariya@gmail.com', contact='9851114356' WHERE sid='4';
SELECT * FROM tbl_student;
SELECT NAME, gender, email FROM tbl_student;
SELECT * FROM tbl_student WHERE faculty='BCA';
SELECT DISTINCT NAME FROM tbl_student;
DELETE FROM tbl_student WHERE sid='2';