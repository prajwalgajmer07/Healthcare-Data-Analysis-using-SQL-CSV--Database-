```markdown
# 🏥 Healthcare Data Analysis using SQL (CSV-Based Database)

## 📌 Project Overview
This project focuses on analyzing healthcare data stored in multiple CSV files and performing structured analysis using SQL queries.  
The objective is to extract meaningful clinical and patient-related insights by combining diagnostic data, laboratory results, patient information, and treatment outcomes.

The project simulates a real-world healthcare analytics scenario where flat files are converted into relational tables and analyzed using SQL.

---

## 🎯 Objectives of the Analysis
- Understand patient distribution and basic demographics
- Analyze diagnosis patterns across patients
- Evaluate laboratory test results and trends
- Study treatment outcomes and recovery patterns
- Identify relationships between diagnoses, lab results, and outcomes

---

## 🗂️ Dataset Description

The analysis is based on four healthcare-related CSV files:

- **Patients** – Contains patient-level information and identifiers  
- **Diagnoses** – Records of medical conditions assigned to patients  
- **Labs** – Laboratory test results and measurements  
- **Outcomes** – Treatment results, recovery status, or clinical outcomes  

These CSV files are imported into SQL tables and connected using patient identifiers to enable relational analysis using JOIN operations.

---

## 🧩 Data Modeling Approach
Although the original data is in CSV format, it is structured into relational tables inside the database.  
Relationships are created using common keys (such as patient ID), allowing:

- Patient-to-diagnosis mapping  
- Patient-to-lab test tracking  
- Diagnosis-to-outcome analysis  

This approach reflects how healthcare data is typically stored and analyzed in hospital information systems.

---

## 🔍 Key Analysis Performed Using SQL

### 🧑 Patient Analysis
- Total number of patients
- Patient distribution across different categories (age / gender if available)
- Patients with multiple diagnoses or repeated tests

### 🦠 Diagnosis Analysis
- Most common medical conditions
- Diagnosis frequency per patient
- Co-occurring diagnoses (if applicable)

### 🧪 Laboratory Analysis
- Frequently conducted lab tests
- Abnormal vs normal test result trends
- Lab patterns linked to specific diagnoses

### 📈 Outcome Analysis
- Recovery vs non-recovery distribution
- Outcome trends across different diagnoses
- Lab result influence on treatment outcomes (where applicable)

All insights are generated using SQL queries involving:
- INNER JOINs across multiple tables  
- GROUP BY with aggregations  
- Filtering using WHERE and HAVING clauses  
- Subqueries for deeper analysis  

---

## 🛠️ Tools & Technologies Used
- SQL (Joins, Aggregations, Subqueries, Filtering)
- CSV-based relational data modeling
- Database query optimization concepts
- Screenshot-based result documentation

---

## 📸 Analysis Evidence
Screenshots of SQL query outputs and result tables are included in the repository to demonstrate:
- Query logic
- Output validation
- Insight extraction from raw healthcare data

---

## 📁 Repository Structure

```

📁 Dataset
├── Patients.csv
├── Diagnoses.csv
├── Labs.csv
└── Outcomes.csv

📁 SQL_Scripts
└── Healthcare_Analysis_Queries.sql

📁 Screenshots
├── query_result_1.png
├── query_result_2.png
└── query_result_3.png

📝 README.md
---

---

## ✅ Learning Outcomes
- Practical experience converting CSV files into relational datasets
- Strong understanding of healthcare data relationships
- Improved analytical thinking using SQL
- Experience generating insights from clinical-style datasets

This project strengthens core skills required for Data Analyst and Healthcare Analyst roles.
```

