# Data Model

## Overview

This project uses a star schema data model designed to support efficient reporting, KPI calculations, and scalable analytical queries within Power BI.

The model consists of a central fact table containing sales and budget information, surrounded by dimension tables that provide descriptive business context.

---

# Model Structure

# Fact Table

The fact table stores the quantitative business metrics used for analysis, including:

- Product
- Sales
- Budget
- Product Launch Year
- Country
- Client
- Sales Channel
- Company
- Sale type

# Dimensions

The following dimensions were created to provide analytical context:

- Product
- Country
- Client
- Sales Channel
- Company
- Launch Year
- Value Type (Sales-Budget)

Each dimension contains unique values and is linked to the fact table through surrogate keys.

# Star Schema Design

The model follows a star schema approach:

- One central fact table.
- Multiple dimension tables.
- One-to-many relationships between dimensions and fact table.
- Single-direction filtering.

This design improves:

- Query performance.
- DAX calculation efficiency.
- Model scalability.
- Report maintainability.

# Data Model Diagram

Containing centered fact table and dimensions related through 1:n relation. 
Additionaly presenting the file "Medidas", which represents ordered measures executed with DAX to present KPIs.

<img width="1133" height="702" alt="Image" src="https://github.com/user-attachments/assets/9cfa3b59-92a5-4d88-9485-14935054a880" />

## Why a Star Schema?

A star schema was selected instead of a single flat table because it:

- Reduces data redundancy.
- Improves model performance.
- Simplifies report development.
- Enables reusable business dimensions.
- Follows industry-standard Business Intelligence practices.
