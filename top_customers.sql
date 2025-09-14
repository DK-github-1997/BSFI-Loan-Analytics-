-- Top 5 customers by loan exposure
SELECT c.first_name, c.last_name,
       SUM(l.loan_amount) AS total_exposure
FROM customers c
JOIN loans l ON c.cust_id = l.cust_id
GROUP BY c.first_name, c.last_name
ORDER BY total_exposure DESC
FETCH FIRST 5 ROWS ONLY;
