# Exercise 1: Control Structures

## Objective

The objective of this exercise is to understand and implement PL/SQL control structures such as loops, conditional statements, and cursor-based iteration.

---

## Scenario 1: Loan Interest Discount for Senior Customers

### Problem Statement

The bank wants to provide a 1% discount on loan interest rates for customers who are above 60 years of age.

### Solution

A PL/SQL block iterates through all customers, calculates their age using the Date of Birth (DOB), and updates the corresponding loan interest rate if the customer is older than 60 years.

### Concepts Used

* FOR LOOP
* IF Statement
* UPDATE Statement
* Date Functions
* DBMS_OUTPUT

---

## Scenario 2: VIP Customer Identification

### Problem Statement

Customers with balances greater than $10,000 should be promoted to VIP status.

### Solution

A PL/SQL block checks the balance of every customer and updates the IsVIP flag accordingly.

### Concepts Used

* FOR LOOP
* IF-ELSE
* UPDATE Statement
* Conditional Logic

---

## Scenario 3: Loan Due Reminder

### Problem Statement

The bank wants to generate reminder messages for customers whose loans are due within the next 30 days.

### Solution

A PL/SQL block retrieves loans whose end date falls within the next 30 days and displays reminder messages.

### Concepts Used

* Date Filtering
* FOR LOOP
* DBMS_OUTPUT.PUT_LINE

---

## Outcome

Successfully implemented PL/SQL control structures to automate customer-related banking operations.

## Technologies Used

* Oracle SQL
* PL/SQL

# Exercise 3: Stored Procedures

## Objective

The objective of this exercise is to understand the creation and execution of stored procedures in PL/SQL and use them to automate banking operations.

---

## Scenario 1: Monthly Interest Processing

### Problem Statement

The bank needs to apply monthly interest to all savings accounts.

### Solution

A stored procedure named ProcessMonthlyInterest updates the balance of all savings accounts by applying a 1% interest rate.

### Concepts Used

* CREATE PROCEDURE
* UPDATE Statement
* Business Logic Automation

---

## Scenario 2: Employee Bonus Processing

### Problem Statement

The bank wants to provide bonuses to employees based on department and bonus percentage.

### Solution

A stored procedure named UpdateEmployeeBonus accepts department and bonus percentage as parameters and updates employee salaries.

### Concepts Used

* Procedure Parameters
* UPDATE Statement
* Arithmetic Operations

---

## Scenario 3: Fund Transfer Between Accounts

### Problem Statement

Customers should be able to transfer money between accounts while ensuring sufficient balance.

### Solution

A stored procedure named TransferFunds verifies account balance before transferring funds from one account to another.

### Concepts Used

* CREATE PROCEDURE
* Conditional Statements
* SELECT INTO
* UPDATE Statement

---

## Outcome

Successfully implemented reusable PL/SQL stored procedures for interest calculation, employee bonus processing, and fund transfers.

## Technologies Used

* Oracle SQL
* PL/SQL
