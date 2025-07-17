# 🧠 QnA - SQL Practice Queries

This project is a lightweight SQL exercise designed for hands-on practice using the `employee` table. It demonstrates SQL operations like:

- Table creation
- Data insertion
- Using `LIMIT`, `ORDER BY`, and aggregate functions
- Finding the second highest salary
- Range queries using `BETWEEN`
- Dropping vs truncating tables

---

## 📁 Folder Structure

```

QnA/
├── sql/
│   └── 01\_employee\_queries.sql
├── README.md

````

---

## 🧪 Quick Preview

```sql
-- Highest Salary
SELECT MAX(salary) FROM employee;

-- Second Highest Salary
SELECT * FROM employee 
WHERE salary < (SELECT MAX(salary) FROM employee) 
ORDER BY salary DESC LIMIT 1;

-- Range Filter
SELECT * FROM employee WHERE salary BETWEEN 5000 AND 12000;
````

---

## 🗑️ Cleanup Queries

```sql
DROP TABLE employee;
-- OR
TRUNCATE TABLE employee;
```

---

## 📌 Tip

* Use this project to get comfortable with core SQL concepts before diving into more complex joins, views, and triggers.

Let me know if you'd like to add joins, functions, or stored procedures to this QnA project or start a fourth one.
