-- High-risk customers with missed payments
SELECT c.cust_id, c.first_name, c.last_name,
       l.loan_id, l.loan_amount,
       COUNT(CASE WHEN p.payment_status='Missed' THEN 1 END) AS missed_payments
FROM customers c
JOIN loans l ON c.cust_id = l.cust_id
JOIN payments p ON l.loan_id = p.loan_id
WHERE c.risk_category = 'High'
GROUP BY c.cust_id, c.first_name, c.last_name, l.loan_id, l.loan_amount
HAVING COUNT(CASE WHEN p.payment_status='Missed' THEN 1 END) > 1;
