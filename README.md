# SQL Data Warehouse Project

## Building a Modern Data Warehouse with SQL Server

A complete end-to-end Data Engineering and Analytics project that demonstrates how to design, develop, and manage a modern SQL Server Data Warehouse. This project covers the entire data lifecycle, including data ingestion, ETL development, data transformation, dimensional modeling, and SQL-based analytical reporting using the Medallion Architecture.

---

# Data Warehouse and Analytics Project

Welcome to the **SQL Data Warehouse Project**.

This repository showcases how to build a production-style data warehouse capable of transforming raw business data into meaningful insights. It follows industry best practices in Data Engineering and Data Analytics while demonstrating how multiple data sources can be integrated into a centralized analytical database.

Whether you're a student, aspiring Data Engineer, or Data Analyst, this project provides practical experience in building scalable SQL solutions for business intelligence.

---

# Data Architecture

The warehouse is designed using the **Medallion Architecture**, which organizes data into three logical layers to improve maintainability, data quality, and analytical performance.

## Bronze Layer

The Bronze Layer serves as the landing zone for incoming data.

Raw ERP and CRM datasets are loaded directly into SQL Server without applying business transformations. This layer preserves the original source data for traceability and future processing.

### Characteristics

* Raw Data Storage
* Batch Processing
* Full Data Load
* Truncate & Insert Strategy
* No Transformations

---

## Silver Layer

The Silver Layer focuses on improving the quality of the data.

After data is loaded into the Bronze Layer, it undergoes cleansing, validation, standardization, and normalization. This produces reliable datasets that are suitable for downstream processing.

### Data Processing

* Data Cleansing
* Missing Value Handling
* Duplicate Removal
* Data Standardization
* Data Normalization
* Derived Columns
* Data Enrichment
* Data Validation

---

## Gold Layer

The Gold Layer contains business-ready datasets optimized for reporting and analytics.

Here, cleaned data is integrated into a Star Schema consisting of Fact and Dimension tables. These datasets are designed for efficient analytical queries and business reporting.

### Deliverables

* Fact Tables
* Dimension Tables
* Business Metrics
* Analytical Views
* Reporting Datasets

---

# Project Overview

This project demonstrates the complete workflow involved in building a modern data warehouse.

The implementation includes:

* Designing a scalable data warehouse architecture
* Building ETL pipelines in SQL Server
* Importing data from multiple source systems
* Cleaning and transforming raw datasets
* Integrating ERP and CRM data
* Developing Star Schema data models
* Performing SQL-based business analytics
* Creating technical documentation

---

# Why This Project?

This repository is intended to showcase practical skills required for modern Data Engineering and Analytics roles.

It demonstrates knowledge in:

* SQL Development
* Data Engineering
* ETL Pipeline Development
* Data Warehouse Design
* Data Modeling
* Data Architecture
* Data Analytics
* Business Intelligence
* Database Management

---

# Important Links & Tools

The following tools are used throughout the project.

| Tool                                | Purpose                                   |
| ----------------------------------- | ----------------------------------------- |
| SQL Server Express                  | Database Engine                           |
| SQL Server Management Studio (SSMS) | SQL Development & Database Administration |
| Git & GitHub                        | Version Control                           |
| Draw.io                             | Architecture, ETL Flow & Data Modeling    |
| Notion                              | Project Planning & Task Management        |
| CSV Files                           | Source Data                               |

Project resources include:

* ERP Dataset
* CRM Dataset
* SQL Server
* Draw.io Diagrams
* Git Repository
* Notion Project Planner

---

# Project Requirements

## Building the Data Warehouse (Data Engineering)

### Objective

Develop a centralized SQL Server Data Warehouse capable of integrating business data from multiple operational systems into a single analytical platform.

The warehouse should provide reliable, clean, and structured data for reporting and business decision-making.

### Specifications

### Data Sources

* ERP System (CSV Files)
* CRM System (CSV Files)

### Data Ingestion

* Import raw datasets into SQL Server
* Preserve source data integrity
* Support batch processing

### Data Quality

Before loading data into the analytical model, perform:

* Data Cleansing
* Duplicate Removal
* Missing Value Handling
* Data Standardization
* Data Validation
* Data Normalization

### Data Integration

Merge ERP and CRM datasets into a unified business model that supports analytical reporting.

### Scope

* Process only the latest available datasets
* Historical tracking is not included
* Focus on building a clean analytical warehouse

### Documentation

Document every stage of the warehouse including:

* Data Architecture
* Data Flow
* Data Models
* Naming Conventions
* Data Catalog

---

# BI: Analytics & Reporting (Data Analysis)

## Objective

Use SQL to generate meaningful business insights from the Gold Layer.

The analytical model should answer important business questions related to:

* Customer Behavior
* Product Performance
* Sales Performance
* Revenue Trends
* Customer Segmentation
* Regional Sales
* Business KPIs

The generated reports should support data-driven business decisions.

---

# ETL Pipeline

The warehouse follows a standard ETL process.

## Extract

Retrieve data from ERP and CRM source systems.

### Sources

* CSV Files
* ERP
* CRM

---

## Transform

Apply business rules to improve data quality.

Transformations include:

* Data Cleansing
* Standardization
* Normalization
* Derived Columns
* Data Enrichment
* Validation
* Duplicate Removal

---

## Load

Load processed datasets into each warehouse layer.

Loading sequence:

```
CSV Files
     │
     ▼
Bronze
     │
     ▼
Silver
     │
     ▼
Gold
```

---

# Project Workflow

## Bronze Layer Tasks

* Analyze source systems
* Build ingestion scripts
* Load raw data
* Validate schema
* Verify completeness
* Create ETL flow diagram
* Commit scripts to Git

---

## Silver Layer Tasks

* Explore datasets
* Clean raw data
* Standardize values
* Normalize data
* Validate transformed datasets
* Document transformations
* Version control using Git

---

## Gold Layer Tasks

* Analyze business entities
* Integrate cleaned datasets
* Create Fact tables
* Create Dimension tables
* Validate analytical model
* Design Star Schema
* Create Data Catalog
* Perform final testing
* Deploy warehouse

---

# Data Model

The reporting layer follows the **Star Schema** model.

### Fact Tables

* Fact Sales

### Dimension Tables

* Customer
* Product
* Date
* Territory

The dimensional model improves reporting performance while simplifying analytical queries.

---

# Repository Structure

```text
data-warehouse-project/
│
├── datasets/
│   ├── ERP/
│   └── CRM/
│
├── docs/
│   ├── etl.drawio
│   ├── data_architecture.drawio
│   ├── data_catalog.md
│   ├── data_flow.drawio
│   ├── data_models.drawio
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
├── .gitignore
└── requirements.txt
```

---

# Technologies Used

## Database

* Microsoft SQL Server Express

## SQL IDE

* SQL Server Management Studio (SSMS)

## Programming

* SQL

## Documentation

* Draw.io
* Markdown

## Version Control

* Git
* GitHub

## Project Management

* Notion

---

# Skills Demonstrated

This project demonstrates practical experience in:

* SQL Programming
* Data Engineering
* ETL Development
* Data Warehousing
* Medallion Architecture
* Data Modeling
* Star Schema Design
* Data Integration
* Data Cleansing
* Business Intelligence
* SQL Analytics
* Git Version Control
* Technical Documentation

---

# Future Improvements

Potential enhancements for future versions include:

* Incremental Data Loading
* Slowly Changing Dimensions (SCD)
* SQL Server Agent Automation
* Stored Procedures
* Query Performance Optimization
* Power BI Dashboards
* Azure Data Factory Integration
* Microsoft Fabric
* CI/CD with GitHub Actions
* Data Quality Monitoring

---

# Acknowledgements

This project was recreated for educational purposes by following the concepts presented in the **SQL Data Warehouse Project** tutorial by **Data With Baraa**.

The implementation serves as a practical learning exercise in modern data warehousing, ETL development, SQL programming, and analytics. Additional customization and improvements may be added over time as part of continuous learning.

---

# License

This repository follows the licensing terms provided with the original project. Please refer to the **LICENSE** file included in this repository for complete licensing details.

---

## Support the Project

If you found this repository useful:

⭐ Star the repository

🍴 Fork the project

📢 Share it with others interested in Data Engineering and SQL.

Happy Learning!
