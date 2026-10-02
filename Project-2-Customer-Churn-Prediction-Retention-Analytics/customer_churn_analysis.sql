CREATE DATABASE customer_churn_analysis;
USE customer_churn_analysis;
SELECT DATABASE();
USE customer_churn_analysis;
CREATE TABLE customers (
    customerID VARCHAR(50),
    gender VARCHAR(20),
    SeniorCitizen INT,
    Partner VARCHAR(10),
    Dependents VARCHAR(10),
    tenure INT,
    PhoneService VARCHAR(20),
    MultipleLines VARCHAR(30),
    InternetService VARCHAR(30),
    OnlineSecurity VARCHAR(30),
    OnlineBackup VARCHAR(30),
    DeviceProtection VARCHAR(30),
    TechSupport VARCHAR(30),
    StreamingTV VARCHAR(30),
    StreamingMovies VARCHAR(30),
    Contract VARCHAR(30),
    PaperlessBilling VARCHAR(10),
    PaymentMethod VARCHAR(50),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    Churn VARCHAR(10)
);
USE customer_churn_analysis;
SELECT DATABASE();
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    gender VARCHAR(20),
    SeniorCitizen INT,
    Partner VARCHAR(10),
    Dependents VARCHAR(10),
    tenure INT,
    PhoneService VARCHAR(20),
    MultipleLines VARCHAR(30),
    InternetService VARCHAR(30),
    OnlineSecurity VARCHAR(30),
    OnlineBackup VARCHAR(30),
    DeviceProtection VARCHAR(30),
    TechSupport VARCHAR(30),
    StreamingTV VARCHAR(30),
    StreamingMovies VARCHAR(30),
    Contract VARCHAR(30),
    PaperlessBilling VARCHAR(10),
    PaymentMethod VARCHAR(50),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    Churn VARCHAR(10)
);
USE customer_churn_analysis;
SELECT DATABASE();
CREATE TABLE churn_summary (
    metric VARCHAR(100),
    value DECIMAL(10,2)
);
INSERT INTO churn_summary (metric, value)
VALUES
('Total Customers', 7043),
('Churned Customers', 1869),
('Non Churned Customers', 5174),
('Overall Churn Rate', 26.54);
SELECT * FROM churn_summary;
CREATE TABLE contract_churn (
    contract_type VARCHAR(30),
    customer_count INT,
    churn_rate DECIMAL(10,2)
);
INSERT INTO contract_churn
(contract_type, customer_count, churn_rate)
VALUES
('Month-to-month', 3875, 42.64),
('One year', 1473, 11.27),
('Two year', 1695, 2.83);
SELECT * FROM contract_churn;
CREATE TABLE tenure_churn (
    tenure_group VARCHAR(30),
    customer_count INT,
    churn_rate DECIMAL(10,2)
);
INSERT INTO tenure_churn
(tenure_group, customer_count, churn_rate)
VALUES
('0-12 Months', 2186, 47.37),
('13-24 Months', 1024, 28.71),
('25-48 Months', 1711, 20.39),
('49-72 Months', 2122, 9.51);
SELECT * FROM tenure_churn;
CREATE TABLE internet_service_churn (
    internet_service VARCHAR(30),
    customer_count INT,
    churn_rate DECIMAL(10,2)
);
INSERT INTO internet_service_churn
(internet_service, customer_count, churn_rate)
VALUES
('DSL', 2421, 18.89),
('Fiber optic', 3096, 41.78),
('No internet', 1526, 7.21);
SELECT * FROM internet_service_churn;
CREATE TABLE payment_method_churn (
    payment_method VARCHAR(50),
    customer_count INT,
    churn_rate DECIMAL(10,2)
);
INSERT INTO payment_method_churn
(payment_method, customer_count, churn_rate)
VALUES
('Electronic check', 2365, 45.15),
('Mailed check', 1612, 18.92),
('Bank transfer', 1544, 16.71),
('Credit card', 1522, 15.24);
SELECT * FROM payment_method_churn;
CREATE TABLE monthly_charge_churn (
    charge_group VARCHAR(30),
    customer_count INT,
    churn_rate DECIMAL(10,2)
);
INSERT INTO monthly_charge_churn
(charge_group, customer_count, churn_rate)
VALUES
('Low', 2350, 15.84),
('Medium', 2347, 29.45),
('High', 2346, 34.08);
SELECT * FROM monthly_charge_churn;
SHOW TABLES;
SELECT * FROM churn_summary;
SELECT * FROM contract_churn;
SELECT * FROM tenure_churn;
SELECT * FROM internet_service_churn;
SELECT * FROM payment_method_churn;
SELECT * FROM monthly_charge_churn;
USE customer_churn_analysis;

CREATE TABLE support_churn (
    support_service VARCHAR(50),
    customer_count INT,
    churn_rate DECIMAL(10,2)
);
INSERT INTO support_churn
(support_service, customer_count, churn_rate)
VALUES
('Tech Support', 3473, 15.17),
('No Tech Support', 3543, 41.59),
('Online Security', 2019, 14.61),
('No Online Security', 4997, 41.81);
SELECT * FROM support_churn;
SELECT
    metric,
    value
FROM churn_summary;
SELECT
    contract_type,
    customer_count,
    churn_rate
FROM contract_churn
ORDER BY churn_rate DESC;
SELECT
    tenure_group,
    customer_count,
    churn_rate
FROM tenure_churn
ORDER BY churn_rate DESC;
SELECT
    internet_service,
    customer_count,
    churn_rate
FROM internet_service_churn
ORDER BY churn_rate DESC;
SELECT
    payment_method,
    customer_count,
    churn_rate
FROM payment_method_churn
ORDER BY churn_rate DESC;
SELECT
    charge_group,
    customer_count,
    churn_rate
FROM monthly_charge_churn
ORDER BY churn_rate DESC;
SELECT
    support_service,
    customer_count,
    churn_rate
FROM support_churn
ORDER BY churn_rate DESC;
CREATE TABLE churn_factor_summary (
    factor VARCHAR(100),
    highest_risk_group VARCHAR(100),
    churn_rate DECIMAL(10,2)
);
INSERT INTO churn_factor_summary
(factor, highest_risk_group, churn_rate)
VALUES
('Contract', 'Month-to-month', 42.64),
('Tenure', '0-12 Months', 47.37),
('Internet Service', 'Fiber optic', 41.78),
('Payment Method', 'Electronic check', 45.15),
('Monthly Charges', 'High', 34.08),
('Technical Support', 'No Tech Support', 41.59),
('Online Security', 'No Online Security', 41.81);
SELECT *
FROM churn_factor_summary
ORDER BY churn_rate DESC;