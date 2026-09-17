-- Loan delinquency summary for portfolio monitoring
-- Flags loans with no successful payment in the last 90 days.

SELECT
    l.loan_id,
    l.cust_id,
    l.loan_type,
    l.loan_amount,
    MAX(CASE WHEN p.payment_status = 'SUCCESS' THEN p.payment_date END) AS last_successful_payment,
    CASE
        WHEN MAX(CASE WHEN p.payment_status = 'SUCCESS' THEN p.payment_date END) IS NULL THEN 'NO_PAYMENT'
        WHEN MAX(CASE WHEN p.payment_status = 'SUCCESS' THEN p.payment_date END) < SYSDATE - 90 THEN 'DELINQUENT'
        ELSE 'CURRENT'
    END AS payment_health
FROM loans l
LEFT JOIN payments p
    ON p.loan_id = l.loan_id
GROUP BY
    l.loan_id,
    l.cust_id,
    l.loan_type,
    l.loan_amount
ORDER BY l.loan_id;
