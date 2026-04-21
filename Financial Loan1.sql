1.Total Loan Applications
SELECT COUNT(id) AS Total_Applications FROM financial_loan;
2.Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM financial_loan;
3.Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected FROM financial_loan;
4.Average Interest Ratebank_loan_data
SELECT AVG(int_rate)*100 AS Avg_Int_Rate FROM financial_loan;
5.Average DTI
SELECT AVG(dti)*100 AS Avg_DTI FROM financial_loan;
6.Loan Status Distribution
SELECT loan_status,COUNT(id) AS Total_Applications
FROM financial_loan
GROUP BY loan_status;
7.Loan Funding Distribution by Status
SELECT loan_status,SUM(loan_amount) AS Total_Funded_Amount
FROM financial_loan
GROUP BY loan_status;
8.Total Amount Received by Loan Status
SELECT loan_status,SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY loan_status;
9.Loan Applications by Term 
SELECT term,COUNT(id) AS Total_Applications
FROM financial_loan
GROUP BY term;
10.Total Loan Application by Purpose 
SELECT purpose,SUM(loan_amount) AS Total_Funded_Amount
FROM financial_loan
GROUP BY purpose
ORDER BY Total_Funded_Amount DESC;
11. Loan Performance by Home Ownership
SELECT home_ownership,SUM(loan_amount) AS Total_Funded_Amount,SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY home_ownership;
12.Average Loan Amount by Grade
SELECT grade,AVG(loan_amount) AS Avg_Loan_Amount
FROM financial_loan
GROUP BY grade
ORDER BY grade;
13.Loan Funding Distribution by Employment Length (Treemap)
SELECT emp_length,SUM(loan_amount) AS Total_Funded_Amount
FROM financial_loan
GROUP BY emp_length;
14.Top 5 States by Loan Applications
SELECT address_state,COUNT(id) AS Total_Applications
FROM financial_loan
GROUP BY address_state
ORDER BY Total_Applications DESC
LIMIT 5;
