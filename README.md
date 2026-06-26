# Modern SQL Data Warehouse Project

A hands-on data engineering project that demonstrates how to design and build a scalable **SQL Server Data Warehouse** using the **Medallion Architecture**. The project covers every stage of the data pipeline—from loading raw CSV files into SQL Server to creating business-ready datasets for reporting and analytics.

---

# Project Summary

The primary objective of this project is to centralize data from multiple business systems into a single analytical database. The warehouse is built using SQL Server and follows industry-standard ETL practices to transform raw operational data into structured, reliable, and analysis-ready information.

The project demonstrates practical skills in:

* SQL Development
* ETL Pipeline Design
* Data Warehouse Architecture
* Data Modeling
* Data Quality Management
* Business Analytics

---

# Solution Architecture

The warehouse is organized using the **Medallion Architecture**, which separates data into three logical layers.

## Bronze Layer

The Bronze layer acts as the landing zone for all incoming data.

Data from ERP and CRM source systems is imported exactly as received without applying business transformations. This layer preserves the original datasets and serves as the foundation for all downstream processing.

### Responsibilities

* Import CSV files
* Preserve original source data
* Perform batch loading
* Reload data using Truncate & Insert
* Maintain raw datasets

---

## Silver Layer

The Silver layer focuses on improving data quality.

Raw datasets are cleaned, standardized, and transformed into consistent datasets suitable for business use. Any inconsistencies, formatting issues, duplicates, or invalid values are handled here.

### Data Processing

* Remove duplicate records
* Clean invalid values
* Standardize formats
* Normalize data
* Generate calculated columns
* Enrich business information
* Validate data quality

---

## Gold Layer

The Gold layer delivers business-ready information.

Cleaned datasets are integrated into a dimensional model using a **Star Schema**, making the warehouse optimized for reporting, dashboards, and analytical queries.

### Deliverables

* Fact Tables
* Dimension Tables
* Business Metrics
* Analytical Views
* Reporting Datasets

---

# Project Workflow

```
Source Systems
(ERP & CRM CSV Files)
        │
        ▼
Bronze Layer
Raw Data Storage
        │
        ▼
Silver Layer
Data Cleaning & Transformation
        │
        ▼
Gold Layer
Business Data Model
        │
        ▼
Reports & Analytics
```

---

# ETL Pipeline

The warehouse follows a traditional ETL workflow.

## Extract

* Import ERP datasets
* Import CRM datasets
* Read CSV source files

## Transform

* Data Cleansing
* Data Validation
* Data Standardization
* Data Normalization
* Business Rule Implementation
* Derived Column Creation
* Data Enrichment

## Load

Processed datasets are loaded into:

* Bronze Tables
* Silver Tables
* Gold Tables

---

# Data Modeling

The reporting layer is designed using a **Star Schema**, enabling fast analytical queries and simplified reporting.

### Fact Table

* Fact Sales

### Dimension Tables

* Customer
* Product
* Date
* Territory

---

# Technologies Used

| Technology                   | Purpose                    |
| ---------------------------- | -------------------------- |
| SQL Server Express           | Database Engine            |
| SQL Server Management Studio | Database Management        |
| SQL                          | ETL Development            |
| Git & GitHub                 | Version Control            |
| Draw.io                      | Architecture & Data Models |
| Notion                       | Project Planning           |
| CSV Files                    | Source Data                |

---

# Development Roadmap

## Bronze Layer

* Understand source systems
* Develop ingestion scripts
* Verify schema consistency
* Validate imported records
* Create ETL data flow diagrams
* Store scripts in Git

---

## Silver Layer

* Explore source data
* Apply cleaning rules
* Standardize datasets
* Validate transformed data
* Document transformation logic
* Maintain version history

---

## Gold Layer

* Design analytical model
* Build Star Schema
* Integrate business entities
* Validate warehouse outputs
* Prepare documentation
* Perform deployment testing

---

# Business Objectives

The warehouse enables organizations to answer important business questions through SQL analytics.

Example analysis includes:

* Customer purchasing behavior
* Product performance
* Revenue trends
* Sales growth
* Regional performance
* Business KPIs
* Customer segmentation

---

# Repository Structure

```
data-warehouse-project/
│
├── datasets/
│   ├── ERP/
│   └── CRM/
│
├── docs/
│   ├── data_architecture.drawio
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   ├── etl.drawio
│   ├── data_catalog.md
│   └── naming-conventions.md
│
├── scripts/
│   ├── bronze/
│   ├── silver/
│   └── gold/
│
├── tests/
│
├── README.md
├── LICENSE
├── requirements.txt
└── .gitignore
```

---

# Future Enhancements

Possible improvements for future versions include:

* Incremental Data Loading
* Slowly Changing Dimensions (SCD)
* SQL Server Agent Scheduling
* Stored Procedures
* Query Performance Optimization
* Power BI Dashboards
* Azure Data Factory Integration
* Microsoft Fabric
* CI/CD with GitHub Actions

---

# Skills Demonstrated

This project showcases knowledge and practical implementation of:

* Data Warehousing
* SQL Programming
* ETL Development
* Data Modeling
* Medallion Architecture
* Star Schema Design
* Data Validation
* Data Transformation
* Business Intelligence
* Analytics Engineering
* Git Version Control

---

# Acknowledgements

This project was inspired by the SQL Data Warehouse tutorial created by **Data With Baraa**. It has been recreated as a learning project to strengthen practical knowledge of SQL, ETL development, and modern data warehousing concepts.

---

# License

This repository follows the license provided with the original project. Please refer to the **LICENSE** file for complete licensing information.
