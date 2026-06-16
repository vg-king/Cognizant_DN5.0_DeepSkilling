-- =========================================
-- Exercise 3 : Stored Procedures
-- =========================================

-- =========================================
-- Scenario 1:
-- Process monthly interest for all
-- savings accounts (1% interest)
-- =========================================

CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest
IS
BEGIN


UPDATE Accounts
SET Balance = Balance + (Balance * 0.01)
WHERE AccountType = 'Savings';

DBMS_OUTPUT.PUT_LINE(
    'Monthly interest applied successfully.'
);


END;
/

-- Execute
BEGIN
ProcessMonthlyInterest;
END;
/

-- =========================================
-- Scenario 2:
-- Update employee salary by bonus %
-- for a specific department
-- =========================================

CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(
p_department IN VARCHAR2,
p_bonus_percent IN NUMBER
)
IS
BEGIN


UPDATE Employees
SET Salary = Salary +
             (Salary * p_bonus_percent / 100)
WHERE Department = p_department;

DBMS_OUTPUT.PUT_LINE(
    'Bonus updated for department: '
    || p_department
);

END;
/

-- Execute Example
BEGIN
UpdateEmployeeBonus('IT', 10);
END;
/

-- =========================================
-- Scenario 3:
-- Transfer funds between accounts
-- =========================================

CREATE OR REPLACE PROCEDURE TransferFunds(
p_from_account IN NUMBER,
p_to_account IN NUMBER,
p_amount IN NUMBER
)
IS
v_balance NUMBER;
BEGIN


SELECT Balance
INTO v_balance
FROM Accounts
WHERE AccountID = p_from_account;

IF v_balance >= p_amount THEN

    UPDATE Accounts
    SET Balance = Balance - p_amount
    WHERE AccountID = p_from_account;

    UPDATE Accounts
    SET Balance = Balance + p_amount
    WHERE AccountID = p_to_account;

    DBMS_OUTPUT.PUT_LINE(
        'Transfer successful.'
    );

ELSE

    DBMS_OUTPUT.PUT_LINE(
        'Insufficient balance.'
    );

END IF;


END;
/

-- Execute Example
BEGIN
TransferFunds(1, 2, 500);
END;
/
