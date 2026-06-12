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

