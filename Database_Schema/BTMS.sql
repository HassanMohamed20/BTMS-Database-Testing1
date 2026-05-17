CREATE DATABASE BTMS_db;
USE BTMS_db;

-- 6.1 Customers
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20) NOT NULL
);

-- 6.2 Accounts
CREATE TABLE Accounts (
    account_number INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    account_type ENUM('Savings','Current','Wallet') NOT NULL,
    balance DECIMAL(15,2) CHECK(balance >= 0),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- 6.3 Transaction_Categories
CREATE TABLE Transaction_Categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) UNIQUE NOT NULL
);

-- 6.4 Transactions
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    sender_account INT NOT NULL,
    receiver_account INT,
    category_id INT,
    transaction_type ENUM('Deposit','Withdrawal','Transfer','Bill Payment') NOT NULL,
    amount DECIMAL(15,2) CHECK(amount > 0),
    transaction_status ENUM('Success','Failed','Pending') DEFAULT 'Pending',
    transaction_date DATE NOT NULL,
    FOREIGN KEY (sender_account) REFERENCES Accounts(account_number),
    FOREIGN KEY (receiver_account) REFERENCES Accounts(account_number),
    FOREIGN KEY (category_id) REFERENCES Transaction_Categories(category_id)
);

-- 6.5 Fees
CREATE TABLE Fees (
    fee_id INT PRIMARY KEY AUTO_INCREMENT,
    transaction_id INT NOT NULL,
    fee_type ENUM('Transfer Fee','Failed Transaction Fee','Over Limit Fee') NOT NULL,
    amount DECIMAL(10,2) CHECK(amount > 0),
    FOREIGN KEY (transaction_id) REFERENCES Transactions(transaction_id)
);

-- 6.6 Branches
CREATE TABLE Branches (
    branch_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

-- 6.7 Employees
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    branch_id INT NOT NULL,
    FOREIGN KEY (branch_id) REFERENCES Branches(branch_id)
);




USE BTMS_db;

-- 1. Insert Transaction Categories (Based on your ENUM requirements)
INSERT INTO Transaction_Categories (category_name) VALUES 
('Utilities'),
('Shopping'),
('Salary'),
('Entertainment'),
('Other');

-- 2. Insert Branches
INSERT INTO Branches (name, location) VALUES 
('Main Branch', 'Downtown Cairo'),
('Digital Hub', 'New Cairo'),
('Commercial Plaza', 'Alexandria');

-- 3. Insert Employees
INSERT INTO Employees (full_name, branch_id) VALUES 
('Ahmed Hassan', 1),
('Sarah Jenkins', 1),
('Mona Zaki', 2);

-- 4. Insert Customers
INSERT INTO Customers (full_name, date_of_birth, email, phone) VALUES 
('John Doe', '1985-05-15', 'john.doe@example.com', '+201011111111'),
('Jane Smith', '1992-08-22', 'jane.smith@example.com', '+201022222222'),
('Robert Brown', '1978-12-01', 'r.brown@example.com', '+201033333333');

-- 5. Insert Accounts
-- Note: customer_id 1 = John, 2 = Jane, 3 = Robert
INSERT INTO Accounts (customer_id, account_type, balance) VALUES 
(1, 'Savings', 5000.00),
(1, 'Wallet', 250.00),
(2, 'Current', 12000.50),
(3, 'Savings', 1500.00);

-- 6. Insert Transactions
-- Scenario: John (Acc 1) pays Utility bill (Cat 1) to Jane (Acc 3 - assuming internal payment)
INSERT INTO Transactions (sender_account, receiver_account, category_id, transaction_type, amount, transaction_status, transaction_date) VALUES 
(1, 3, 1, 'Bill Payment', 150.00, 'Success', '2026-05-10'),
(3, 1, 3, 'Transfer', 500.00, 'Success', '2026-05-11'),
(2, NULL, 2, 'Withdrawal', 100.00, 'Success', '2026-05-11');

-- 7. Insert Fees
-- Scenario: Fee for the transfer transaction_id 2
INSERT INTO Fees (transaction_id, fee_type, amount) VALUES 
(2, 'Transfer Fee', 5.50);
