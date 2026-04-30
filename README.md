# Student Management System (MySQL)

A complete **Student Management System database project** built using **MySQL**.
This project is designed to manage student records, departments, lecturers, courses, enrollments, marks, attendance, and fee payments.

---

## 📌 Project Overview

The system helps educational institutions store and manage important student-related information in a structured relational database.

It demonstrates practical use of:

* Database design
* Table relationships
* Primary keys & foreign keys
* SQL queries
* Joins
* Aggregate functions
* Views
* Stored procedures
* Triggers

---

## 🛠️ Technologies Used

* MySQL
* MySQL Workbench (recommended)

---

## 🗂️ Database Name

```sql
student_management
```

---

## 📚 Tables Included

1. departments
2. lecturers
3. students
4. courses
5. enrollments
6. marks
7. attendance
8. fees

---

## ✨ Features

### Student Management

* Add and store student details
* Link students to departments

### Course Management

* Assign lecturers to courses
* Enroll students into courses

### Academic Performance

* Store student marks
* Generate reports
* Calculate averages

### Attendance Tracking

* Record student attendance
* Generate attendance reports

### Fees Management

* Track fee payments
* View payment totals

---

## 📊 Sample SQL Functions Used

* SELECT
* WHERE
* ORDER BY
* GROUP BY
* HAVING
* INNER JOIN
* AVG()
* SUM()
* COUNT()
* MAX()
* MIN()

---

## 🚀 How to Run the Project

1. Open MySQL Workbench
2. Create a new SQL tab
3. Import or open:

```sql
student_management.sql
```

4. Run the script
5. Open:

```sql
student_management_queries.sql
```

6. Execute queries

---

## 📁 Recommended Project Files

```text
student-management-system-sql/
│── student_management.sql
│── student_management_queries.sql
│── README.md
```

---

## 🎯 Example Queries

```sql
SELECT * FROM students;
```

```sql
SELECT s.first_name, d.department_name
FROM students s
JOIN departments d
ON s.department_id = d.department_id;
```

```sql
SELECT student_id, AVG(marks)
FROM marks
GROUP BY student_id;
```

---

## 💼 Skills Demonstrated

* Relational Database Design
* SQL Development
* Data Analysis Queries
* Data Integrity with Foreign Keys
* Report Generation

---

## 📌 Future Improvements

* Login system
* Front-end application
* Dashboard reports
* Web integration with PHP / Python
* Role-based access control

---

## 👤 Author

Luvhani Tshisudzungwane

---

## 📄 License

This project is open for learning and portfolio purposes.
