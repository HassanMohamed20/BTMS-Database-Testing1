# 🏦 Banking Transaction Management System (BTMS) - Database Testing Project

## 📌 Project Overview
[cite_start]This project focuses on the **comprehensive Functional and Data Integrity Database Testing** for the **Banking Transaction Management System (BTMS)**[cite: 1, 95, 168]. [cite_start]Testing was executed exclusively at the database level using advanced SQL queries to validate complex business rules, transactional atomicity, constraints, and automated trigger behaviors[cite: 96, 100, 160].

[cite_start]The primary goal was to ensure that backend relational integrity perfectly aligns with the core Business Requirements Document (BRD)[cite: 103, 136].

---

## 🛠️ Tech Stack & Environment
* [cite_start]**Database Engine:** MySQL [cite: 1]
* [cite_start]**Testing Environment:** Windows 10 [cite: 1]
* [cite_start]**Tools Used:** MySQL Workbench / SQL Server Management Studio [cite: 220]
* [cite_start]**Test Methodology:** Functional DB Testing, Negative Testing, Boundary Value Analysis, Constraint & Trigger Validation[cite: 166, 167, 170, 171].

---

## 🎯 Testing Scope

### 📥 In-Scope Modules & Components
* [cite_start]**Customer Management:** Validation of customer creation, updates, and data constraints (e.g., Email Uniqueness)[cite: 107, 108, 109, 110].
* [cite_start]**Account Management:** Balance validation, multi-account handling, and negative balance prevention[cite: 112, 115, 116, 194].
* [cite_start]**Transaction Management:** Execution validation for Deposits, Withdrawals, and Transfers ensuring atomicity[cite: 117, 118, 119, 160].
* [cite_start]**Fees & Charges:** Verification of automated transfer fee logic and limit rules[cite: 127, 129, 201].
* [cite_start]**Database Objects:** Verification of Primary/Foreign Keys, `CHECK` constraints, `ENUM` restrictions, and complex Triggers[cite: 136, 137, 138, 139, 140, 141].

### 🚫 Out of Scope
* [cite_start]Front-End User Interface (UI) [cite: 28]
* [cite_start]APIs and Integration Services [cite: 29]
* [cite_start]Performance & Stress Testing (not included in this testing cycle)[cite: 71].

---

## 📊 Test Execution Summary & Statistics

[cite_start]A total of **69 Test Cases** were executed over a 3-day testing window[cite: 1, 35].

| Test Scenario | Total TCs | Passed | Failed | Blocked |
| :--- | :---: | :---: | :---: | :---: |
| Account Management | 12 | 9 | 3 | 0 |
| Customer Management | 12 | 10 | 2 | 0 |
| Transaction Categories | 8 | 6 | 2 | 0 |
| Fees & Charges | 12 | 7 | 5 | 0 |
| Branches & Employees | 10 | 9 | 1 | 0 |
| Transaction Management | 15 | 10 | 4 | 1 |

### 📈 Metrics
* [cite_start]**Total Executed:** 69 [cite: 35]
* **Passed:** 51 | **Failed:** 17 | [cite_start]**Blocked:** 1 [cite: 35]
* [cite_start]**Pass Percentage:** **73.9%** [cite: 35]

---

## 🪲 Defect & Business Rules Analysis

### Defect Distribution by Severity
* [cite_start]**Critical:** 1 🔴 [cite: 37]
* [cite_start]**High:** 7 🟠 [cite: 37]
* [cite_start]**Medium:** 4 🟡 [cite: 37]
* [cite_start]**Low:** 3 🟢 [cite: 37]

### Key Observations & Business Rule Status
* [cite_start]**Passed:** Email uniqueness, FK enforcement, non-negative balances, and successful transaction handling[cite: 44].
* [cite_start]**Failed (Edge Cases):** * **Automatic Balance Updates:** Encountered race conditions/inconsistent behavior under rapid concurrent updates[cite: 40, 44].
  * [cite_start]**Daily Transfer Limits:** Failed to enforce restrictions strictly under specific concurrent or edge-case bulk operations[cite: 39, 44].
  * [cite_start]**Data Validation:** Lack of strict regex/numeric formatting constraints on the phone number input field[cite: 41, 70].

---

## 💡 Lessons Learned & Recommendations
1. [cite_start]**Concurrency Testing is Vital:** Automated database triggers require extensive concurrency and load testing early in the cycle to prevent data race conditions[cite: 73, 77].
2. [cite_start]**Dual-Layer Validation:** Business logic must be securely enforced at both the database level (constraints/triggers) and the application level[cite: 74].
3. [cite_start]**Strict Input Sanitization:** Implementing early pattern/regex matching directly on fields (like phone numbers) blocks corrupted data downstream[cite: 76, 82].

---

## 📁 Project Deliverables Included
* [cite_start]`BTMS_Test_Plan.pdf` - Outlining strategy, scope, and entry/exit criteria[cite: 95, 238, 248, 254].
* [cite_start]`BTMS_Test_Closure_Report.pdf` - Final execution details, bug analysis, and system quality stability report[cite: 2, 32, 36, 92].



































