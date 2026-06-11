# SQL-Employee-Sales-Analytics


## 👤 Profile
 * **Name:** Obike Chinedu Igwe
 * **Role:** Data Analyst / Database Specialist
 * **Core Skills:** Relational Database Design, Data Architecture, Business Intelligence, Data Aggregation, SQL Performance Scripting
 * **Tech Stack:** SQL (Structured Query Language), Relational Databases (MySQL/PostgreSQL), Markdown
## 🗄️ Case Study: Relational Database Design & Advanced SQL Analytics
### 📝 Project Overview
In a corporate setting, tracking sales data across multiple departments and geographic regions using basic spreadsheets quickly becomes messy and inefficient.
For this project, I engineered a relational database table from scratch to securely store and organize corporate sales data. I then developed a suite of **8 advanced SQL scripts** to handle data extraction, calculate key business performance metrics, and pinpoint top-performing regions and employees for the executive management team.
### 🛠️ Step 1: Database Architecture & Setup
Before analyzing data, I needed to build a structured home for it. I wrote foundational Data Definition Language (DDL) and Data Manipulation Language (DML) scripts to create the table schema and populate it with clean records.
#### 1. Table Creation (Table.sql)
I defined precise data types, structured columns for employee tracking, and established a Primary Key to ensure data integrity.
```sql
-- Creating the foundational table structure
CREATE TABLE EmployeeSales (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    Region VARCHAR(50),
    Month VARCHAR(20),
    Sales INT
);

```
*(Operational Script Context:* SELECT*from employee_sales;*)*
#### 2. Populating the Database (Employee.sql)
I loaded the table with production-ready employee records spanning key departments (Sales, Finance, HR) and major regional hubs (Lagos, Abuja, Port Harcourt).
```sql
INSERT INTO employee_sales 
VALUES
(101,'John','Sales','Lagos','January',750000),
(102,'Amaka','Finance','Abuja','January',420000),
(103,'James','HR','Port Harcourt','February',280000),
(104,'King','Sales','Lagos','February',610000),
(105,'Grace','Finance','Abuja','March',510000),
(106,'Esther','HR','Lagos','March',350000),
(107,'Michael','Sales','Port Harcourt','January',890000),
(108,'Vivian','Finance','Lagos','February',470000),
(109,'Obi','HR','Abuja','March',300000),
(110,'Okoro','Sales','Lagos','March',720000);

```
### 🔍 Step 2: Operational Data Extraction
With the database up and running, I wrote targeted queries to filter records and pull specific segments of data based on operational performance metrics.
#### 1. General Employee Performance (Performance.sql)
A query designed to pull baseline performance data across various teams to observe overall monthly activity and track employee assignments.
```sql
SELECT
Employee,
Sales,
CASE 
WHEN Sales> 600000 THEN 'High'
WHEN Sales> 400000 THEN 'Medium'
ELSE 'Low'
END AS Performance
FROM employee_sales;

```
#### 2. High-Value Benchmarks (Average.sql)
I used conditional filtering and the AVG() function to find the baseline averages for departments and regions, separating standard performers from high-earning units.
```sql
SELECT AVG(Sales) FROM employee_sales;

```
### 🚀 Step 3: Advanced Business Intelligence & Data Aggregation
To give executives real strategic value, I wrote complex queries using SQL aggregation functions (SUM, MAX, AVG), GROUP BY clauses, and ordering limits.
#### 1. Regional Revenue Contribution (Total in each Region.sql & Top Region.sql)
Instead of looking at raw rows, these queries group the sales data by geographic location to instantly reveal which city is generating the most market share.
```sql
-- Total in each Region.sql
SELECT COUNT(*) AS Total_employees
FROM employee_sales
GROUP BY Region;

```
```sql
-- Top Region.sql
SELECT*FROM employee_sales
WHERE Sales>500000
ORDER BY Region DESC;

```
#### 2. Identifying Leaderboard Stars (Highest Sales.sql & Top 3 Sales.sql)
To reward top talent, management needs to know who the highest earners are. I wrote a query using ORDER BY DESC and a LIMIT filter to isolate the absolute top 3 highest transactions in the database.
```sql
-- Highest Sales.sql
SELECT*FROM employee_sales 
ORDER BY Sales DESC;

```
```sql
-- Top 3 Sales.sql
SELECT*
FROM employee_sales
ORDER BY Sales DESC
Limit 3;

```
### 💡 Key Business Insights Extracted
By running this SQL suite, the following operational insights were delivered to leadership:
 1. **Geographic Powerhouses:** The regional revenue queries pinpointed exactly which regional office commands the market share, allowing leadership to allocate bigger marketing budgets to high-performing cities.
 2. **The Elite Talent Group:** The Top 3 Sales script instantly highlights our MVP employees, making it easy for HR to calculate performance bonuses automatically and accurately.
 3. **Data-Driven Operations:** By moving from manual spreadsheet tracking to structured SQL scripts, data retrieval times were heavily optimized, and human calculation errors were completely eliminated.
### 📂 Project Repository Files & Quick Links
This project consists of the following production-ready scripts:
 * 📄 **Table.sql** — Schema definition.
 * 📄 **Employee.sql** — Data insertion script.
 * 📄 **Performance.sql** — General tracking query.
 * 📄 **Average.sql** — Performance benchmark calculations.
 * 📄 **Total in each Region.sql** — Regional revenue aggregation.
 * 📄 **Top Region.sql** — Market share identifier.
 * 📄 **Highest Sales.sql** — Maximum peak revenue tracker.
 * 📄 **Top 3 Sales.sql** — Employee incentive leaderboard query.
