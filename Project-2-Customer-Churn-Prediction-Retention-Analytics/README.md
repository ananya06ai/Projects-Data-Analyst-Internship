# Customer Churn Prediction & Retention Analytics

## Data Analyst Internship – Project 2

### Project Overview

Customer churn is an important business problem in the telecommunications industry. This project analyzes customer data to identify patterns associated with churn, predict customers who may be at risk of leaving, explain machine learning predictions, and develop customer retention strategies.

The project combines **Python, Machine Learning, SHAP Explainability, Customer Segmentation, and MySQL** to perform end-to-end customer churn analysis.

---

## Objectives

* Clean and preprocess the customer churn dataset.
* Perform Exploratory Data Analysis (EDA).
* Identify important factors associated with customer churn.
* Predict customer churn using Machine Learning.
* Compare Logistic Regression and Decision Tree models.
* Explain model predictions using SHAP.
* Segment customers based on churn risk.
* Perform structured churn analysis using SQL.
* Develop customer retention recommendations.

---

## Dataset

**Dataset:** Telco Customer Churn Dataset

The cleaned dataset contains:

* **7,043 customer records**
* **20 columns**

### Main Features

* Gender
* SeniorCitizen
* Partner
* Dependents
* Tenure
* PhoneService
* MultipleLines
* InternetService
* OnlineSecurity
* OnlineBackup
* DeviceProtection
* TechSupport
* StreamingTV
* StreamingMovies
* Contract
* PaperlessBilling
* PaymentMethod
* MonthlyCharges
* TotalCharges
* Churn

---

## Technologies Used

### Python

* Pandas
* NumPy
* Matplotlib
* Seaborn

### Machine Learning

* Scikit-learn
* Logistic Regression
* Decision Tree
* StandardScaler
* Train-Test Split
* Classification Metrics

### Explainable AI

* SHAP

### Database

* MySQL

---

## Project Workflow

```text
Raw Dataset
     ↓
Data Cleaning & Preprocessing
     ↓
Exploratory Data Analysis
     ↓
Feature Encoding
     ↓
Train-Test Split
     ↓
Machine Learning
     ↓
Model Evaluation
     ↓
SHAP Explainability
     ↓
Customer Segmentation
     ↓
SQL Churn Analysis
     ↓
Retention Recommendations
```

---

## Exploratory Data Analysis

The analysis examined churn across different customer characteristics.

### Overall Churn

* Total Customers: **7,043**
* Churned Customers: **1,869**
* Non-Churned Customers: **5,174**
* Overall Churn Rate: **26.54%**

### Contract Analysis

| Contract Type  | Observed Churn Rate |
| -------------- | ------------------: |
| Month-to-month |              42.64% |
| One year       |              11.27% |
| Two year       |               2.83% |

### Tenure Analysis

| Tenure Group | Observed Churn Rate |
| ------------ | ------------------: |
| 0–12 Months  |              47.37% |
| 13–24 Months |              28.71% |
| 25–48 Months |              20.39% |
| 49–72 Months |               9.51% |

### Internet Service Analysis

| Internet Service | Observed Churn Rate |
| ---------------- | ------------------: |
| DSL              |              18.89% |
| Fiber optic      |              41.78% |
| No internet      |               7.21% |

### Payment Method Analysis

| Payment Method   | Observed Churn Rate |
| ---------------- | ------------------: |
| Electronic check |              45.15% |
| Mailed check     |              18.92% |
| Bank transfer    |              16.71% |
| Credit card      |              15.24% |

---

## Machine Learning

Two classification models were developed:

### 1. Logistic Regression

| Metric    | Result |
| --------- | -----: |
| Accuracy  | 79.84% |
| Precision | 65.00% |
| Recall    | 52.14% |
| F1 Score  | 57.86% |

### 2. Decision Tree

A Decision Tree classifier with a maximum depth of 5 was developed and evaluated using the same classification metrics.

The model results were compared using:

* Accuracy
* Precision
* Recall
* F1 Score

The detailed comparison is available in:

`Python/model_comparison.csv`

---

## SHAP Explainability

SHAP (SHapley Additive exPlanations) was used to interpret the Decision Tree model predictions.

The SHAP analysis helps identify how different customer features contribute to churn predictions and makes the machine learning results easier to interpret.

Output:

`Python/SHAP_Summary_Plot.png`

---

## Customer Segmentation

Customers were divided into three project-defined analytical segments using predicted churn probability and tenure.

| Segment | Customers |
| ------- | --------: |
| Loyal   |       737 |
| Dormant |       372 |
| At Risk |       300 |

### Segment Definitions

**At Risk:**
Customers with predicted churn probability of at least 50%.

**Loyal:**
Customers with at least 24 months of tenure and predicted churn probability below 50%.

**Dormant:**
Customers who do not fall into the At Risk or Loyal definitions.

The segmentation results are available in:

* `Python/customer_segments.csv`
* `Python/segment_analysis.csv`

---

## SQL Analysis

MySQL was used for structured churn analysis and summary tables.

The SQL analysis covers:

* Overall churn
* Contract-wise churn
* Tenure-wise churn
* Internet service churn
* Payment method churn
* Monthly charge groups
* Technical support
* Online security
* Churn factor summary
* Retention actions

Main SQL file:

`SQL/customer_churn_analysis.sql`

---

## Key Churn Factors Identified

The analysis observed higher churn rates among several customer groups:

| Factor            | Higher-Risk Group  | Observed Churn Rate |
| ----------------- | ------------------ | ------------------: |
| Contract          | Month-to-month     |              42.64% |
| Tenure            | 0–12 Months        |              47.37% |
| Internet Service  | Fiber optic        |              41.78% |
| Payment Method    | Electronic check   |              45.15% |
| Monthly Charges   | High               |              34.08% |
| Technical Support | No Tech Support    |              41.59% |
| Online Security   | No Online Security |              41.81% |

These are observed associations in the dataset and do not by themselves establish that a factor causes churn.

---

## Retention Recommendations

Based on the analysis:

1. Prioritize customers with higher predicted churn probability for retention activities.
2. Strengthen onboarding and early customer support for new customers.
3. Provide suitable longer-term contract options to eligible customers.
4. Improve awareness and access to technical support.
5. Review suitable plans or bundles for customers with higher monthly charges.
6. Monitor customer groups with higher observed churn rates.
7. Use churn predictions and customer segments to support targeted retention campaigns.

---

## Project Structure

```text
Project-2-Customer-Churn-Prediction-Retention-Analytics/
│
├── Dataset/
│   ├── telco_customer_churn.csv
│   └── cleaned_telco_churn.csv
│
├── Python/
│   ├── customer_churn_analysis.ipynb
│   ├── model_comparison.csv
│   ├── customer_segments.csv
│   ├── segment_analysis.csv
│   ├── SHAP_Summary_Plot.png
│   └── Python screenshots
│
├── SQL/
│   ├── customer_churn_analysis.sql
│   └── SQL screenshots
│
└── Documentation/
    └── Customer_Churn_Analysis_Report.docx
```

---

## Deliverables

* Python Machine Learning Notebook
* EDA and Visualization Outputs
* Logistic Regression Model
* Decision Tree Model
* Model Comparison
* SHAP Explainability Analysis
* Customer Segmentation
* SQL Analysis
* Retention Recommendations
* Final Word Report

---

## Conclusion

This project demonstrates an end-to-end customer churn analytics workflow using data preprocessing, exploratory analysis, machine learning, explainable AI, customer segmentation, and SQL.

The analysis provides a structured approach for identifying customer groups with higher observed churn and estimating individual churn risk, which can support data-driven customer retention planning.

---

## Future Scope

Future improvements could include:

* Random Forest and XGBoost models
* Hyperparameter tuning
* Additional customer interaction and complaint data
* Real-time churn prediction
* Automated churn monitoring dashboards
* Periodic retraining of the prediction model

---

## Documentation
The complete project report is available in:
`Documentation/Customer_Churn_Analysis_Report.docx`
