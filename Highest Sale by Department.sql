SELECT
Department,
MAX (Sales) AS Total_Sales
FROM employee_sales
GROUP BY Department;