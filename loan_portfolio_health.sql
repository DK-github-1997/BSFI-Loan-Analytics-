-- Loan portfolio health by loan type
SELECT loan_type,
       COUNT(*) AS total_loans,
       SUM(loan_amount) AS total_loan_value,
       SUM(CASE WHEN status='Defaulted' THEN 1 ELSE 0 END) AS defaulted_loans
FROM loans
GROUP BY loan_type;
