# 📄 Database Schema Description

This project models a simple educational platform with students enrolling in various courses. It uses three main tables:

---

## 🧍‍♂️ Students Table

**Table Name:** `Students`

| Column  | Type         | Description              |
|---------|--------------|--------------------------|
| id      | BIGINT       | Primary Key              |
| name    | VARCHAR(255) | Student's full name      |
| age     | INT(2)       | Age of the student       |
| phone   | INT(10)      | Contact number (not ideal for INT, see note) |

> 💡 **Note:** Phone numbers are often better stored as VARCHAR to preserve leading 0s or support country codes.

---

## 📘 Courses Table

**Table Name:** `Courses`

| Column  | Type         | Description             |
|---------|--------------|-------------------------|
| id      | BIGINT       | Primary Key             |
| name    | VARCHAR(255) | Course name             |
| price   | INT          | Course price in currency units |

---

## 🔗 StudentCourses Table (Junction Table)

**Table Name:** `StudentCourses`

This table creates a many-to-many relationship between students and courses.

| Column     | Type   | Description                        |
|------------|--------|------------------------------------|
| StudentId  | BIGINT | Foreign Key → `Students(id)`       |
| CourseId   | BIGINT | Foreign Key → `Courses(id)`        |

---

## 🧩 Relationships

- Each **student** can enroll in **many courses**.
- Each **course** can have **many students**.
- Managed using a **junction table** (`StudentCourses`).

```plaintext
Students     <--->     StudentCourses     <--->     Courses
   1                      M-to-M                    1
