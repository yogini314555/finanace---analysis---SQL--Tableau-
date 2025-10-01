# finanace---analysis---SQL--Tableau-

💳 Loan & Finance Analysis – SQL & Tableau
📌 Project Overview

This project performs loan and borrower analysis using SQL and Tableau to understand loan performance, borrower behavior, and repayment patterns.
The goal is to provide actionable insights for risk management, credit assessment, and business strategy, with interactive dashboards for visualization.

🎯 Objectives

Analyze loan status trends (Fully Paid vs Charged Off).

Understand borrower demographics (state, employment, home ownership).

Evaluate loan characteristics: grade, term, purpose, subgrade.

Study financial ratios like Debt-to-Income (DTI), interest rate, and installment amounts.

Identify high-risk loans and default patterns.

Provide interactive Tableau dashboards to visualize trends and metrics.

📂 Dataset

The dataset contains loan and borrower information with the following columns:

Column	Description
id	Unique loan identifier
address_state	Borrower's state
application_type	Individual or joint application
emp_length	Borrower's employment duration
emp_title	Borrower's job title
grade	Loan grade (A–G)
home_ownership	Borrower home ownership (Rent, Mortgage, Own)
issue_date	Loan issue date
last_credit_pull_date	Last credit pull date
last_payment_date	Last payment date
loan_status	Fully Paid / Charged Off
next_payment_date	Next scheduled payment date
member_id	Unique borrower ID
purpose	Purpose of the loan (car, credit_card, etc.)
sub_grade	Sub-grade for finer risk classification
term	Loan term (36/60 months)
verification_status	Income verification status
annual_income	Borrower's annual income
dti	Debt-to-Income ratio
installment	Monthly installment amount
int_rate	Interest rate
loan_amount	Loan amount issued
total_acc	Total credit accounts borrower has
total_payment	Total payment made to date

Download the dataset:

From this repository: 📄 https://github.com/yogini314555/finanace---analysis---SQL--Tableau-/blob/main/financial_loan.csv

🔍 Analysis Performed
Using SQL

Data cleaning & preparation:

Handle missing values, duplicates, and data type formatting.

Loan Performance Analysis:

Count of Fully Paid vs Charged Off loans.

Loan distribution by grade and sub-grade.

Loan status by term (36 vs 60 months).

Borrower Profile Analysis:

Loans by state and home ownership type.

Employment length vs loan default rate.

Income and DTI ratio distribution among borrowers.

Financial Metrics Analysis:

Average interest rate and installment by loan grade.

Correlation of loan amount, DTI, and default rate.

Purpose-wise Analysis:

Default trends by loan purpose (car, education, home, etc.).

Using Tableau

Interactive dashboards created to visualize insights:

Loan Status Distribution: Fully Paid vs Charged Off (bar/pie charts).

Grade & Sub-grade Analysis: Default rates and revenue per grade.

State-wise Loans: Map visualization of loan distribution and defaults.

Borrower Profile Metrics: DTI vs Loan Amount scatter plots, employment length trends.

Loan Purpose & Term Analysis: Heatmaps and bar charts for purpose-wise default analysis.

Financial KPIs: Total loans, average interest, total payments, and delinquency rate cards.

📊 Tools & Technologies

SQL (MySQL / PostgreSQL / SQLite) → Data extraction, aggregation, and analysis

Tableau Desktop → Interactive dashboards and visualizations

Excel (optional) → Data validation and preliminary exploration

📈 Key Insights

Default Rate: Loans with grade C and below show higher Charged Off rates.

Loan Purpose: Car loans and small personal loans have higher default probability.

Employment Length: Borrowers with <1 year employment are more likely to default.

DTI & Income: High Debt-to-Income ratio correlates with defaults.

State-wise Trends: Certain states exhibit higher default rates, indicating regional credit risk.

Interest Rate Impact: Higher interest rates often align with increased defaults.

💡 Recommendations

Target low-risk borrowers with verified income for higher loan amounts.

Monitor high-DTI borrowers closely and consider additional credit checks.

Adjust loan grade risk models for grades C–G.

Apply regional risk adjustments based on state-level trends.

Offer financial counseling for borrowers with <1 year employment.

Use Tableau dashboards for real-time loan performance monitoring and stakeholder reporting.

🚀 How to Run

Clone the repository:

git clone https://github.com/your-username/loan-finance-analysis.git


Load dataset into SQL database:

CREATE TABLE loans (
    id INT PRIMARY KEY,
    address_state VARCHAR(5),
    application_type VARCHAR(20),
    emp_length VARCHAR(20),
    emp_title VARCHAR(100),
    grade CHAR(1),
    home_ownership VARCHAR(20),
    issue_date DATE,
    last_credit_pull_date DATE,
    last_payment_date DATE,
    loan_status VARCHAR(20),
    next_payment_date DATE,
    member_id INT,
    purpose VARCHAR(50),
    sub_grade VARCHAR(2),
    term VARCHAR(20),
    verification_status VARCHAR(50),
    annual_income FLOAT,
    dti FLOAT,
    installment FLOAT,
    int_rate FLOAT,
    loan_amount FLOAT,
    total_acc INT,
    total_payment FLOAT
);

COPY loans FROM './data/Loan_Data.csv' DELIMITER ',' CSV HEADER;


Open https://github.com/yogini314555/finanace---analysis---SQL--Tableau-/blob/main/financee.sql for pre-written analysis queries.

Open https://github.com/yogini314555/finanace---analysis---SQL--Tableau-/blob/main/finance.twb to explore interactive dashboards.

📌 Project Structure
loan-finance-analysis/
│── data/                
│   └── Loan_Data.csv           # Raw dataset  
│
│── sql/                 
│   └── queries.sql            # SQL queries for analysis  
│
│── Tableau/           
│   └── Loan_Dashboard.twbx     # Tableau dashboard file  
│
│── images/              
│   └── charts/                 # Exported screenshots of Tableau visuals  
│
│── README.md                   # Project documentation  

📸 Dashboard Preview

<img width="1586" height="800" alt="Screenshot 2025-10-02 011314" src="https://github.com/user-attachments/assets/ae14a1eb-c1b1-4284-ba0f-55b212c1aea5" />
<img width="1568" height="789" alt="Screenshot 2025-10-02 011334" src="https://github.com/user-attachments/assets/32ea6ab3-207d-46df-9629-d4e1d83a02fb" />
<img width="1562" height="801" alt="Screenshot 2025-10-02 011353" src="https://github.com/user-attachments/assets/0abe2a63-d1f6-462c-805b-c52cd0115514" />




🙌 Acknowledgements

Dataset: Loan dataset with anonymized borrower info

Tools: SQL & Tableau

Inspired by real-world loan risk analysis, credit management, and business intelligence
