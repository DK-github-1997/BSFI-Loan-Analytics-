-- Monthly repayment trend
SELECT TO_CHAR(payment_date,'YYYY-MM') AS month,
       SUM(amount_paid) AS total_recovered
FROM payments
WHERE payment_status <> 'Missed'
GROUP BY TO_CHAR(payment_date,'YYYY-MM')
ORDER BY month;
