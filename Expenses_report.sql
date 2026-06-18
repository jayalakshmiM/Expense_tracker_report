CREATE DATABASE expense_tracker;
USE expense_tracker;

CREATE TABLE expenses (
    expense_id INT AUTO_INCREMENT PRIMARY KEY,
    expense_date DATE,
    category VARCHAR(50),
    sub_category VARCHAR(50),
    amount DECIMAL(10,2),
    payment_mode VARCHAR(30),
    merchant VARCHAR(50),
    location VARCHAR(50),
    status VARCHAR(20),
    description VARCHAR(100)
);
INSERT INTO expenses
(expense_date, category, sub_category, amount, payment_mode,merchant, location, status, description)
VALUES
('2023-01-05','Rent','House Rent',10000,'UPI','House Owner','Chennai','Paid','Monthly Rent'),
('2023-02-10','Grocery','Vegetables',1200,'Card','Reliance Fresh','Chennai','Paid','Groceries'),
('2023-03-15','Travel','Bus',500,'Cash','TNSTC','Chennai','Paid','Bus Pass'),
('2023-04-20','Dining Out','Restaurant',700,'UPI','Dominos','Chennai','Paid','Dinner'),
('2023-05-25','Shopping','Clothes',1800,'Card','Trends','Chennai','Paid','Shopping'),
('2023-06-30','Medical','Medicine',900,'UPI','Apollo Pharmacy','Chennai','Paid','Medicines'),
('2024-01-08','Rent','House Rent',11000,'UPI','House Owner','Chennai','Paid','Monthly Rent'),
('2024-02-12','Gym','Membership',1200,'UPI','Fitness Club','Chennai','Paid','Gym Fee'),
('2024-03-18','Bills','Electricity',2500,'Net Banking','TNEB','Chennai','Paid','Electricity Bill'),
('2024-04-22','Fuel','Petrol',1400,'Cash','Indian Oil','Chennai','Paid','Fuel'),
('2024-05-26','Insurances','Health',1800,'Net Banking','HDFC Ergo','Chennai','Paid','Insurance'),
('2024-06-29','Savings','Emergency Fund',4000,'UPI','SBI','Chennai','Paid','Savings'),
('2025-01-05','Rent','House Rent',12000,'UPI','House Owner','Chennai','Paid','Monthly Rent'),
('2025-02-10','Grocery','Vegetables',1800,'Card','Reliance Fresh','Chennai','Paid','Groceries'),
('2025-03-15','Travel','Train',800,'UPI','IRCTC','Chennai','Paid','Train Ticket'),
('2025-04-20','Dining Out','Restaurant',1200,'Card','Starbucks','Chennai','Paid','Dinner'),
('2025-05-25','Shopping','Electronics',3500,'Card','Croma','Chennai','Paid','Headphones'),
('2025-06-30','Investments','Mutual Fund',7000,'UPI','Groww','Chennai','Paid','SIP'),
('2025-07-10','Fuel','Petrol',1500,'Cash','Indian Oil','Chennai','Paid','Fuel'),
('2025-08-15','Deliveries','Food Delivery',450,'UPI','Swiggy','Chennai','Paid','Lunch'),
('2025-09-20','Medical','Consultation',600,'Cash','Apollo Clinic','Chennai','Paid','Checkup'),
('2025-10-25','Savings','Fixed Deposit',5000,'Net Banking','SBI','Chennai','Paid','FD'),
('2025-11-18','Gym','Membership',1500,'UPI','Fitness Club','Chennai','Paid','Gym Fee'),
('2025-12-22','Bills','Internet',1200,'UPI','Airtel','Chennai','Paid','Broadband');
select * from expenses;