-- Customers taking multiple loans in last 3 months (potential fraud)
SELECT c.cust_id, c.first_name, c.last_name, COUNT(l.loan_id) AS num_loans
FROM customers c
JOIN loans l ON c.cust_id = l.cust_id
WHERE l.start_date BETWEEN ADD_MONTHS(SYSDATE,-3) AND SYSDATE
GROUP BY c.cust_id, c.first_name, c.last_name
HAVING COUNT(l.loan_id) > 2;
