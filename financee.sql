-- Total Loan Applications
SELECT COUNT(id) AS Total_Applications FROM financial_loan;
-- MTD Loan Applications
SELECT COUNT(id) AS Total_Applications FROM financial_loan
WHERE MONTH(issue_dates) = 12;

-- PMTD Loan Applications
SELECT COUNT(id) AS Total_Applications FROM financial_loan
WHERE MONTH(issue_dates) = 11;

-- Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM financial_loan;

-- MTD Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM financial_loan
WHERE MONTH(issue_dates) = 12;

-- PMTD Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM financial_loan
WHERE MONTH(issue_dates) = 11;

-- Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected FROM financial_loan;

-- MTD Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected FROM financial_loan
WHERE MONTH(issue_dates) = 12;

-- PMTD Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected FROM financial_loan
WHERE MONTH(issue_dates) = 11;

-- Average Interest Rate
SELECT AVG(int_rate)*100 AS Avg_Int_Rate FROM financial_loan;


-- MTD Average Interest
SELECT AVG(int_rate)*100 AS MTD_Avg_Int_Rate FROM financial_loan
WHERE MONTH(issue_dates) = 12;

-- PMTD Average Interest
SELECT AVG(int_rate)*100 AS PMTD_Avg_Int_Rate FROM financial_loan
WHERE MONTH(issue_dates) = 11;

-- Avg DTI
SELECT AVG(dti)*100 AS Avg_DTI FROM financial_loan;

-- MTD Avg DTI
SELECT AVG(dti)*100 AS MTD_Avg_DTI FROM financial_loan
WHERE MONTH(issue_dates) = 12;

-- PMTD Avg DTI
SELECT AVG(dti)*100 AS PMTD_Avg_DTI FROM financial_loan
WHERE MONTH(issue_dates) = 11;



