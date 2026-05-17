# BTMS Database Testing

A comprehensive database testing project for the **Banking Transaction Management System (BTMS)** using **MySQL**.
This project focuses on validating database functionality, constraints, relationships, triggers, and business rules through structured SQL testing.

## 📌 Project Overview

The BTMS database is designed to manage banking operations including:

* Customers
* Accounts
* Transactions
* Employees
* Branches
* Loans
* Transaction Categories

The project ensures:

* Data integrity
* Relational consistency
* Business rule validation
* Constraint and trigger testing

---

## 🛠 Technologies Used

* **MySQL**
* SQL Queries
* Database Constraints
* Triggers
* Manual Database Testing

---

## 📂 Project Structure

```bash
BTMS-Database-Testing/
│
├── SQL Scripts/
│   ├── create_tables.sql
│   ├── insert_data.sql
│   ├── triggers.sql
│   └── test_queries.sql
│
├── Test Cases/
│   ├── Positive Test Cases
│   ├── Negative Test Cases
│   └── Boundary Test Cases
│
├── Bug Reports/
│
└── README.md
```

---

## ✅ Features Tested

### Customer Management

* Unique email validation
* Mandatory fields validation
* Date of birth validation

### Account Management

* Account creation
* Foreign key validation
* Balance constraints

### Transaction Management

* Insert transaction records
* Prevent invalid transaction amounts
* Validate transaction categories

### Employee & Branch Management

* Employee linked to valid branch
* Prevent deleting referenced branches

### Security & Integrity

* Primary key constraints
* Foreign key constraints
* NOT NULL validation
* Trigger execution validation

---

## 🧪 Testing Scope

The testing includes:

* INSERT operations
* UPDATE operations
* Constraint testing
* Trigger testing
* Business rule validation
* Data consistency checks

---

## 🚀 How to Run

1. Install MySQL Server
2. Create the database:

```sql
CREATE DATABASE BTMS_db;
USE BTMS_db;
```

3. Run the SQL scripts in order:

   * `create_tables.sql`
   * `insert_data.sql`
   * `triggers.sql`
   * `test_queries.sql`

4. Execute test cases and verify results.

---

## 📋 Example Test Case

| Test Case ID | Scenario                             | Expected Result     |
| ------------ | ------------------------------------ | ------------------- |
| TC_001       | Insert customer with duplicate email | Error displayed     |
| TC_002       | Insert future DOB                    | Validation failed   |
| TC_003       | Insert employee without branch       | FK constraint error |

---

## 🎯 Objectives

* Ensure database reliability
* Validate banking business rules
* Detect integrity issues early
* Improve database quality and stability

---

## 👨‍💻 Author

**Hassan Mohamed Ibrahim**
Backend Developer | QA & Database Testing Enthusiast

GitHub Repository:
[BTMS Database Testing Repository](https://github.com/HassanMohamed20/BTMS-Database-Testing1?utm_source=chatgpt.com)
