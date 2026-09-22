-- Loan delinquency risk scoring
-- Portfolio example: classify loans using overdue days and outstanding balance.
-- Adjust thresholds to match the business policy being modeled.

SELECT loan_id,
       customer_id,
       outstanding_balance,
       overdue_days,
       CASE
           WHEN overdue_days >= 90 THEN 'HIGH'
           WHEN overdue_days >= 30 THEN 'MEDIUM'
           WHEN overdue_days > 0 THEN 'LOW'
           ELSE 'CURRENT'
       END AS delinquency_risk,
       CASE
           WHEN overdue_days >= 90 AND outstanding_balance > 100000 THEN 'PRIORITY_REVIEW'
           WHEN overdue_days >= 90 THEN 'REVIEW'
           ELSE 'STANDARD'
       END AS review_priority
FROM loans
ORDER BY overdue_days DESC, outstanding_balance DESC;
