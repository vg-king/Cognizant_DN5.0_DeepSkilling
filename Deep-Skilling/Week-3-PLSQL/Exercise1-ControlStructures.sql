-- =========================================
-- Exercise 1 : Control Structures
-- =========================================

-- =========================================
-- Scenario 1:
-- Apply 1% discount on loan interest rate
-- for customers above 60 years of age
-- =========================================


DECLARE
    v_age NUMBER;
BEGIN
    FOR cust IN (
        SELECT CustomerID, DOB
        FROM Customers
    )
    LOOP

        v_age := FLOOR(
                    MONTHS_BETWEEN(
                        SYSDATE,
                        cust.DOB
                    ) / 12
                 );

        IF v_age > 60 THEN

            UPDATE Loans
            SET InterestRate = InterestRate - 1
            WHERE CustomerID = cust.CustomerID;

        END IF;

    END LOOP;

    DBMS_OUTPUT.PUT_LINE(
        'Interest rate discount applied.'
    );

END;
/
-- =========================================
-- Scenario 2:
-- Promote customers to VIP status
-- if balance exceeds $10,000
-- =========================================

ALTER TABLE Customers
ADD IsVIP VARCHAR2(5);

BEGIN

    FOR cust IN (
        SELECT CustomerID, Balance
        FROM Customers
    )
    LOOP

        IF cust.Balance > 10000 THEN

            UPDATE Customers
            SET IsVIP = 'TRUE'
            WHERE CustomerID = cust.CustomerID;

        ELSE

            UPDATE Customers
            SET IsVIP = 'FALSE'
            WHERE CustomerID = cust.CustomerID;

        END IF;

    END LOOP;

    DBMS_OUTPUT.PUT_LINE(
        'VIP status updated.'
    );

END;
/

-- =========================================
-- Scenario 3:
-- Send reminders for loans due
-- within next 30 days
-- =========================================

BEGIN

    FOR loan_rec IN (
        SELECT LoanID,
               CustomerID,
               EndDate
        FROM Loans
        WHERE EndDate BETWEEN SYSDATE
                          AND SYSDATE + 30
    )
    LOOP

        DBMS_OUTPUT.PUT_LINE(
            'Reminder: Loan '
            || loan_rec.LoanID
            || ' is due on '
            || TO_CHAR(
                   loan_rec.EndDate,
                   'DD-MON-YYYY'
               )
        );

    END LOOP;

END;
/