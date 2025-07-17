# 🧪 SQL Queries for Manual Testing

This folder contains SQL scripts designed to support manual testing activities, sample database queries, and practice exercises.

---

## 📁 Projects Summary

| Project Name        | Folder Name         | Description                                                                 |
|---------------------|---------------------|-----------------------------------------------------------------------------|
| Student-Course      | `student_course/`   | Handles student and course relationships with joins and constraints.       |
| CRM                 | `crm/`              | Customer, product, and order system with views, triggers, procedures, etc. |
| QnA                 | `qna/`              | Standalone SQL queries using LIMIT, ORDER, BETWEEN, DROP/TRUNCATE, etc.    |

---

## 📌 How to Use

- Run the SQL scripts in each project’s `sql/` folder to:
    - Set up the database (`create_tables.sql`)
    - Insert sample data (`insert_data.sql`)
    - Explore or validate with queries (`select`, `update`, `delete`, `views`, etc.)
- Use the `QnA` project for individual exercises or interview prep.

---

## 🧩 Integration with Manual Testing

Use these SQL scripts to:

- ✅ **Prepare** test data before executing UI/API tests.
- ✅ **Validate** database state after test execution.
- ✅ **Clean up** using `DELETE`, `TRUNCATE`, or `DROP` statements.

---

## 💡 Tips

- Use MySQL CLI, phpMyAdmin, or DBeaver for running queries.
- Follow numeric prefixes (e.g., `01_create_tables.sql`) to execute scripts in the correct order.
- ER diagrams are available in the `docs/` folder of each project, if applicable.

---

## 📚 Additional Documentation

Each sub-project has its own `README.md` file and schema documentation in the `docs/` folder:

