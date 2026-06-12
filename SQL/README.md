# SQL Layer
## Overview

SQL was used to prepare the analytical data model by creating dimension tables, validating data quality, and supporting the star schema structure used in Power BI.

---

## Scripts Included

## Create_Dimensions.sql

Creates dimension tables by extracting unique business entities from the source dataset.

Dimensions generated:

- Product
- Country
- Client
- Sales Channel
- Company
- Launch Year

---

## Create_Primary_Keys.sql

Implements surrogate keys for each dimension table to support efficient relationships within the analytical model.

---

## Create_Foreign_Keys.sql

Establishes relationships between the fact table and dimensions through foreign key assignments.

---

## Data_Validation.sql

Performs validation checks to ensure:

- No duplicate dimension values.
- No null key values.
- Consistent relationships between tables.
- SQL Contribution to the Project

---

## SQL was used to:

Transform raw data into analytical structures.
Create reusable dimensions.
Reduce data redundancy.
Support star schema implementation.
Improve Power BI model maintainability.
