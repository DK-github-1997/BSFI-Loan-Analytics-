-- Create BFSI schema tables
CREATE TABLE customers (
  cust_id INT PRIMARY KEY,
  first_name VARCHAR2(50),
  last_name VARCHAR2(50),
  dob DATE,
  city VARCHAR2(50),
  risk_category VARCHAR2(20)
);

CREATE TABLE loans (
  loan_id INT PRIMARY KEY,
  cust_id INT REFERENCES customers(cust_id),
  loan_type VARCHAR2(30),
  loan_amount NUMBER(12,2),
  start_date DATE,
  end_date DATE,
  status VARCHAR2(20)
);

CREATE TABLE payments (
  payment_id INT PRIMARY KEY,
  loan_id INT REFERENCES loans(loan_id),
  payment_date DATE,
  amount_paid NUMBER(12,2),
  payment_status VARCHAR2(20)
);

CREATE TABLE branches (
  branch_id INT PRIMARY KEY,
  branch_name VARCHAR2(100),
  city VARCHAR2(50),
  region VARCHAR2(50)
);
