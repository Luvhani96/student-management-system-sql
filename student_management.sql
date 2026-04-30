CREATE DATABASE student_management;
USE student_management;

-- Departments
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL
);

-- Lectures
CREATE TABLE lecturers (
    lecturer_id INT PRIMARY KEY AUTO_INCREMENT,
    lecturer_name VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Students
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    date_of_birth DATE,
    phone VARCHAR(15),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Courses
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    lecturer_id INT,
    FOREIGN KEY (lecturer_id) REFERENCES lecturers(lecturer_id)
);

-- Enrollents
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enroll_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Marks
CREATE TABLE marks (
    mark_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    marks INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Attendance
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    attendance_date DATE,
    status VARCHAR(10),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Fees
CREATE TABLE fees (
    fee_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
SHOW TABLES;
USE student_management;

INSERT INTO departments (department_name)
VALUES 
('Information Technology'),
('Business Management'),
('Accounting'),
('Engineering');

INSERT INTO lecturers (lecturer_name, department_id)
VALUES
('Dr Smith', 1),
('Mr Patel', 2),
('Ms Dlamini', 3),
('Prof Nkosi', 4);

INSERT INTO students (first_name, last_name, gender, date_of_birth, phone, department_id)
VALUES
('Lerato', 'Mokoena', 'Female', '2002-05-10', '0812345678', 1),
('John', 'Nkosi', 'Male', '2001-11-20', '0823456789', 2),
('Ayesha', 'Khan', 'Female', '2003-02-15', '0834567890', 1),
('Sipho', 'Zulu', 'Male', '2000-08-30', '0845678901', 3),
('Emily', 'Brown', 'Female', '2002-12-05', '0856789012', 4);


INSERT INTO courses (course_name, lecturer_id)
VALUES
('Database Systems', 1),
('Business Ethics', 2),
('Financial Accounting', 3),
('Civil Engineering Basics', 4);

INSERT INTO enrollments (student_id, course_id, enroll_date)
VALUES
(1,1, '2025-01-10'),
(1,3, '2025-01-10'),
(2,2, '2025-01-10'),
(3,1, '2025-01-10'),
(4,3, '2025-01-10'),
(5,4, '2025-01-10');

INSERT INTO marks (student_id, course_id, marks)
VALUES
(1, 1, 78),
(1, 3, 65),
(2, 2, 88),
(3, 1, 90),
(4, 3, 55),
(5, 4, 72);

INSERT INTO attendance (student_id, course_id, attendance_date, status)
VALUES
(1, 1, '2025-02-01', 'Present'),
(1, 1, '2025-02-02', 'Absent'),
(2, 2, '2025-02-01', 'Present'),
(3, 1, '2025-02-01', 'Present'),
(4, 3, '2025-02-01', 'Absent'),
(5, 4, '2025-02-01', 'Present');

INSERT INTO fees (student_id, amount, payment_date)
VALUES
(1, 5000, '2025-01-15'),
(2, 4500, '2025-01-15'),
(3, 5000, '2025-01-15'),
(4, 4000, '2025-01-15'),
(5, 6000, '2025-01-15');

SELECT * FROM students;


