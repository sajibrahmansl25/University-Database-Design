CREATE TABLE department
(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    hod VARCHAR(50)
);

CREATE TABLE student
(
    std_id INT PRIMARY KEY,
    dept_id INT,
    name VARCHAR(30),
    contact_num VARCHAR(11),
    FOREIGN KEY(dept_id) REFERENCES department(dept_id)
);

CREATE TABLE instructor
(
    inst_id INT PRIMARY KEY,
    name VARCHAR(30),
    dept_id INT,
    contact_num VARCHAR(11),
    salary INT,
    FOREIGN KEY(dept_id) REFERENCES department(dept_id)
);

CREATE TABLE course
(
    course_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(30),
    dept_id INT,
    cred_hrs INT,
    FOREIGN KEY(dept_id) REFERENCES department(dept_id)
);

CREATE TABLE taken_course
(
    std_id INT,
    course_id VARCHAR(10),
    year INT,
    semester INT,
    grade VARCHAR(2),
    FOREIGN KEY(std_id) REFERENCES student(std_id),
    FOREIGN KEY(course_id) REFERENCES course(course_id)
);

CREATE TABLE advisor
(
    std_id INT,
    inst_id INT,
    FOREIGN KEY(std_id) REFERENCES student(std_id),
    FOREIGN KEY(inst_id) REFERENCES instructor(inst_id)
);


CREATE TABLE conduct_course
(
    inst_id INT,
    course_id VARCHAR(10),
    year INT,
    semester INT,
    FOREIGN KEY(inst_id) REFERENCES instructor(inst_id),
    FOREIGN KEY(course_id) REFERENCES course(course_id)
);