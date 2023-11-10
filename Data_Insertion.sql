
-- 1.data insertion in department table:

INSERT INTO department VALUES(01, 'CE', 'Dr. Abu Zakir Morshed');
INSERT INTO department VALUES(03, 'EEE', 'Dr. Md. Salah Uddin Yusuf');
INSERT INTO department VALUES(05, 'ME', 'Dr. Zahir Uddin Ahmed');
INSERT INTO department VALUES(07, 'CSE', 'Dr. Sk. Mohammad Masudul Ahsan');
INSERT INTO department VALUES(09, 'ECE', 'Dr, SK Shariful Alam');

-- 2.data insertion in student table:

INSERT INTO student VALUES(1909001, 09,  'Nahin', '11111111111');
INSERT INTO student VALUES(1909002, 09,  'Taha', '22222222222');
INSERT INTO student VALUES(1909003, 09,  'Sanjukta', '33333333333');
INSERT INTO student VALUES(1909004, 09,  'Marjan', '44444444455');
INSERT INTO student VALUES(1909005, 09,  'Joita', '55555555555');

INSERT INTO student VALUES(1901001, 03,  'Raktim', '21111111111');
INSERT INTO student VALUES(1901002, 03,  'Rudra', '22222222222');
INSERT INTO student VALUES(1901003, 03,  'Fagun', '33433333353');
INSERT INTO student VALUES(1901004, 03,  'Galib', '44447444455');
INSERT INTO student VALUES(1901005, 03,  'Rahat', '55555155555');

INSERT INTO student VALUES(1903001, 01,  'Fuad', '21181111111');
INSERT INTO student VALUES(1903002, 01,  'Muktadir', '22222282222');
INSERT INTO student VALUES(1903003, 01,  'Abir', '33433383335');
INSERT INTO student VALUES(1903004, 01,  'Ayon', '44447444855');
INSERT INTO student VALUES(1903005, 01,  'Ferdous', '55555155855');

INSERT INTO student VALUES(1905001, 05,  'Rabbi', '21181111151');
INSERT INTO student VALUES(1905002, 05,  'Fahad', '22222582222');
INSERT INTO student VALUES(1905003, 05,  'Ashib', '33433383375');
INSERT INTO student VALUES(1905004, 05,  'Azom', '44447444855');
INSERT INTO student VALUES(1905005, 05,  'Fahim', '55555165855');


INSERT INTO student VALUES(1907001, 07,  'Rabiul', '21481111151');
INSERT INTO student VALUES(1907002, 07,  'Kabir', '22242582222');
INSERT INTO student VALUES(1907003, 07,  'Zian', '33434383373');
INSERT INTO student VALUES(1907004, 07,  'Zabir', '44477444853');
INSERT INTO student VALUES(1907005, 07,  'Sezan', '55565165853');

-- 3.data insertion in instructor table:

INSERT INTO instructor VALUES(5001, 'Dr. Kaji Abul', 05, '12345678901', 50000);
INSERT INTO instructor VALUES(5002, 'Dr. Fahad Saleh', 05, '23456789012', 50000);
INSERT INTO instructor VALUES(5003, 'Dr. Nizamuddin', 05, '34567890123', 50000);
INSERT INTO instructor VALUES(5004, 'Dr. Rafiqul', 05, '45678901234', 50000);
INSERT INTO instructor VALUES(5005, 'Dr. Morshed', 05, '56789012345', 50000);

INSERT INTO instructor VALUES(3001, 'Dr. Nur Alam ', 03, '12345678901', 50000);
INSERT INTO instructor VALUES(3002, 'Dr. Al Amin', 03, '12345678901', 50000);
INSERT INTO instructor VALUES(3003, 'Dr. Musabbir', 03, '12345678901', 50000);
INSERT INTO instructor VALUES(3004, 'Dr. Abdul Kader', 03, '12345678901', 50000);
INSERT INTO instructor VALUES(3005, 'Dr. Bashar Ali', 03, '12345678901', 50000);

INSERT INTO instructor VALUES(9001, 'Dr. Monir Hossain', 09, '12345678901', 50000);
INSERT INTO instructor VALUES(9002, 'Dr. Faruque Hossain', 09, '23456789012', 50000);
INSERT INTO instructor VALUES(9003, 'Dr. Rabiul Islam', 09, '34567890123', 50000);
INSERT INTO instructor VALUES(9004, 'Dr. Foisal Hossain', 09, '45678901234', 50000);
INSERT INTO instructor VALUES(9005, 'Dr. Pallab Kumar Chowdhury', 09, '56789012345', 50000);
INSERT INTO instructor VALUES(9006, 'Nawaz Talukder Sanglap', 09, '50789012345', 40000);

INSERT INTO instructor VALUES(1001, 'Dr. Saifullah', 01, '98765432101', 50000);
INSERT INTO instructor VALUES(1002, 'Dr. Quazi Sazzad Hossain', 01, '87654321012', 50000);
INSERT INTO instructor VALUES(1003, 'Dr. Sajal Kumar', 01, '76543210923', 50000);
INSERT INTO instructor VALUES(1004, 'Dr. Monoj Kumar', 01, '65432109834', 50000);
INSERT INTO instructor VALUES(1005, 'Dr. Nitin Kumar', 01, '54321098745', 50000);

INSERT INTO instructor VALUES(7001, 'Dr. M M A Hashem ', 07, '12345678901', 50000);
INSERT INTO instructor VALUES(7002, 'Dr. K. M. Azharul Hasan', 07, '23456789012', 50000);
INSERT INTO instructor VALUES(7003, 'Dr. Md. Sheikh Sadi', 07, '34567890123', 50000);
INSERT INTO instructor VALUES(7004, 'Dr. Pintu Chandra Shill', 07, '45678901234', 50000);
INSERT INTO instructor VALUES(7005, 'Dr. Sk. Md. Masudul Ahsan', 07, '56789012345', 50000);
INSERT INTO instructor VALUES(7006, 'Md. Badiuzzaman Shuvo', 07, '56789112345', 40000);

-- 4.data insertion in course table:

INSERT INTO course VALUES('CSE-3209', 'Database Systems', 09, 3);
INSERT INTO course VALUES('CSE-3210', 'Database Systems Laboratory', 09, 0.75);
INSERT INTO course VALUES('ECE-3201', 'Information Theory', 09, 3);
INSERT INTO course VALUES('ECE-3203', 'Digital Signal Processing', 09, 3);
INSERT INTO course VALUES('ECE-3205', 'Digital Communication', 09, 3);
INSERT INTO course VALUES('ECE-3207', 'Antenna Engineering', 09, 3);

-- 5.data insertion in taken_course table:

INSERT INTO taken_course VALUES(1909001, 'CSE-3209', 3, 2, 'A');
INSERT INTO taken_course VALUES(1909002, 'CSE-3209', 3, 2, 'A');
INSERT INTO taken_course VALUES(1909003, 'CSE-3209', 3, 2, 'A');
INSERT INTO taken_course VALUES(1909004, 'CSE-3209', 3, 2, 'A');
INSERT INTO taken_course VALUES(1909005, 'CSE-3209', 3, 2, 'A');

-- 6.data insertion in advisor table:

INSERT INTO advisor VALUES(1909001, 9001);
INSERT INTO advisor VALUES(1909002, 9002);
INSERT INTO advisor VALUES(1909003, 9003);
INSERT INTO advisor VALUES(1909004, 9004);
INSERT INTO advisor VALUES(1909005, 9005);

INSERT INTO advisor VALUES(1907001, 7001);
INSERT INTO advisor VALUES(1907002, 7002);


-- 7.data insertion in conduct_course table:

INSERT INTO conduct_course VALUES(9001, 'ECE-3205', 3, 2);
INSERT INTO conduct_course VALUES(7006, 'CSE-3209', 3, 2);
INSERT INTO conduct_course VALUES(9006, 'CSE-3210', 3, 2);
INSERT INTO conduct_course VALUES(7006, 'CSE-3210', 3, 2);

set pagesize 300
set linesize 300

-- displaying all tables:

SELECT * FROM student;
SELECT * FROM instructor;
SELECT * FROM taken_course;
SELECT * FROM advisor;
SELECT * FROM department;
SELECT * FROM course;
SELECT * FROM conduct_course;