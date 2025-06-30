# 💻 PC Sales Database System

This project simulates a fictional PC retail company database system built in **MySQL**. The system includes customer management, order processing, inventory tracking, and supplier linkage. The project also includes Python scripts for data generation, automation, and query execution.

## 📦 Contents

- `sql/`: SQL files for database schema and queries
- `scripts/`: Python scripts to generate data and connect to the database
- `data/`: Generated Excel and CSV files with fake data using Faker
- `docs/`: Entity-Relationship Diagram

## 🔧 Technologies Used

- MySQL Workbench 8.0
- Python 3.11
- Faker (for realistic data generation)
- Pandas
- mysql-connector-python

## 🗃️ Schema Overview

[View the ER Diagram](https://github.com/alex-andre4/pc-sales-database/blob/main/Videos%20and%20Instructions/ERDiagram.jpg)

## 🛠️ Setup Instructions

### 1. Import SQL Schema
Load `sql/Alexandre Morales PC Sales DB FINAL.sql` into MySQL Workbench.

### 2. Install Dependencies

```bash
pip install faker pandas mysql-connector-python openpyxl

3. Run Python Data Generator

cd scripts/
python database-data-generator.py

4. Execute Interface Script (Optional)

Update database credentials in front-end.py, then:

python front-end.py

📊 SQL Query Highlights

    Find PCs under $1500 with >8GB RAM

    View customer order summaries

    Inventory valuation by brand

    Add/delete customer and supplier data with cascading

Queries available in sql/my_queries.sql.
🚧 Challenges

    Ensuring referential integrity between generated tables (e.g., matching foreign keys)

    Importing Excel-generated data into MySQL without data loss or type mismatches

    Validating cascade constraints during deletions/updates

🧠 Author
    Alexandre Morales

📝 License
    MIT License
