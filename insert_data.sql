-- Insert sample customer data
INSERT INTO customers VALUES (1,'John','Doe',DATE '1985-05-12','New York','Low');
INSERT INTO customers VALUES (2,'Alice','Smith',DATE '1990-07-20','Chicago','High');

-- Insert loans
INSERT INTO loans VALUES (101,1,'Home Loan',250000,DATE '2022-01-01',DATE '2042-01-01','Active');
INSERT INTO loans VALUES (102,2,'Personal Loan',50000,DATE '2023-05-15',DATE '2026-05-15','Active');

-- Insert payments
INSERT INTO payments VALUES (1001,101,DATE '2023-01-05',2000,'On-Time');
INSERT INTO payments VALUES (1002,101,DATE '2023-02-05',2000,'Late');
INSERT INTO payments VALUES (1003,102,DATE '2023-06-15',1500,'Missed');

-- Insert branches
INSERT INTO branches VALUES (1,'NY Downtown','New York','East');
INSERT INTO branches VALUES (2,'Chicago Central','Chicago','Midwest');
