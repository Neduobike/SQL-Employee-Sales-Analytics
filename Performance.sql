SELECT
Employee,
Sales,
CASE 
WHEN Sales> 600000 THEN 'High'
WHEN Sales> 400000 THEN 'Medium'
ELSE 'Low'
END AS Performance
FROM employee_sales;