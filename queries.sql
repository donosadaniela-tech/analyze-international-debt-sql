-- Analyze International Debt Statistics
-- Project inspired by DataCamp


-- Number of distinct countries in the database
SELECT COUNT (DISTINCT country_name) AS  total_distinct_countries
FROM international_debt;

-- Country with the highest total amount of debt 
SELECT country_name, SUM(debt) AS total_debt
FROM international_debt
GROUP BY country_name
ORDER BY total_debt DESC
LIMIT 1;

-- Country with the lowest amount of repayments
-- Indicator: DT.AMT.DLXF.CD
SELECT country_name, indicator_name,  SUM(debt) AS lowest_repayment
FROM international_debt
WHERE indicator_code = 'DT.AMT.DLXF.CD'
GROUP BY country_name , indicator_name
ORDER BY lowest_repayment
LIMIT 1;


