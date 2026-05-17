# 🏦 Banking Transaction Management System (BTMS) - Database Testing Project

## 📌 Project Overview

This project focuses on **comprehensive Functional and Data Integrity Database Testing** for the **Banking Transaction Management System (BTMS)**. Testing was executed exclusively at the database level using advanced SQL queries to validate complex business rules, transactional atomicity, constraints, and automated trigger behaviors.

The primary goal was to ensure that backend relational integrity perfectly aligns with the core Business Requirements Document (BRD).

---

## 🛠️ Tech Stack & Environment

- **Database Engine:** MySQL
- **Testing Environment:** Windows 10
- **Tools Used:** MySQL Workbench / SQL Server Management Studio
- **Test Methodology:** Functional DB Testing, Negative Testing, Boundary Value Analysis, Constraint & Trigger Validation

---

## 🎯 Testing Scope

### 📥 In-Scope Modules & Components

- **Customer Management:** Validation of customer creation, updates, and data constraints (e.g., email uniqueness).
- **Account Management:** Balance validation, multi-account handling, and negative balance prevention.
- **Transaction Management:** Execution validation for deposits, withdrawals, and transfers while ensuring transactional atomicity.
- **Fees & Charges:** Verification of automated transfer fee logic and transfer limit rules.
- **Database Objects:** Verification of Primary/Foreign Keys, `CHECK` constraints, `ENUM` restrictions, and complex triggers.

### 🚫 Out of Scope

- Front-End User Interface (UI)
- APIs and Integration Services
- Performance & Stress Testing (not included in this testing cycle)

---

## 📊 Test Execution Summary & Statistics

A total of **69 Test Cases** were executed over a 3-day testing window.

| Test Scenario | Total TCs | Passed | Failed | Blocked |
|---|---:|---:|---:|---:|
| Account Management | 12 | 9 | 3 | 0 |
| Customer Management | 12 | 10 | 2 | 0 |
| Transaction Categories | 8 | 6 | 2 | 0 |
| Fees & Charges | 12 | 7 | 5 | 0 |
| Branches & Employees | 10 | 9 | 1 | 0 |
| Transaction Management | 15 | 10 | 4 | 1 |

### 📈 Metrics

- **Total Executed:** 69
- **Passed:** 51
- **Failed:** 17
- **Blocked:** 1
- **Pass Percentage:** **73.9%**

---

## 🪲 Defect & Business Rules Analysis

### Defect Distribution by Severity

- **Critical:** 1 🔴
- **High:** 7 🟠
- **Medium:** 4 🟡
- **Low:** 3 🟢

### Key Observations & Business Rule Status

#### ✅ Passed

- Email uniqueness validation
- Foreign key enforcement
- Non-negative balance validation
- Successful transaction processing

#### ❌ Failed / Edge Cases

- **Automatic Balance Updates:** Encountered race conditions and inconsistent behavior under rapid concurrent updates.
- **Daily Transfer Limits:** Failed to enforce restrictions strictly under specific concurrent and bulk operation scenarios.
- **Data Validation:** Missing strict regex/numeric validation for phone number fields.

---

## 💡 Lessons Learned & Recommendations

1. **Concurrency Testing is Essential**  
   Automated database triggers require extensive concurrency and load testing early in the testing cycle to prevent race conditions.

2. **Dual-Layer Validation**  
   Business logic should be enforced at both the database level (constraints/triggers) and application level.

3. **Strict Input Sanitization**  
   Implementing regex and pattern validation directly on database fields helps prevent corrupted or invalid data.

---

## 📁 Project Deliverables Included

- `BTMS_Test_Plan.pdf` — Outlines testing strategy, scope, and entry/exit criteria.
- `BTMS_Test_Closure_Report.pdf` — Contains final execution details, defect analysis, and system quality assessment.

---

## 👨‍💻 Author

**Hassan Mohamed Ibrahim**  
Software Testing and QC

## 🔗 GitHub Repository

[BTMS Database Testing Repository](https://github.com/HassanMohamed20/BTMS-Database-Testing1)
