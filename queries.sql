SELECT *
FROM billionaires

SELECT *
FROM world_bank

-- billionaires by country
SELECT country_name, count(country_name) as "country_count"
FROM billionaires
GROUP BY country_name
ORDER BY "country_count" DESC;

-- Billionaire net worth vs GDP of smallest country
SELECT b.name, b.net_worth, w.country_name, w.gdp, w.population
FROM world_bank as w
  JOIN billionaires AS b
  	ON (w.country_name = b.country_name)
WHERE gdp IS NOT NULL
ORDER BY population

-- Top Ten Schools
SELECT "School1", count("School1") as "School_Count"
FROM billionaires
WHERE "School1" IS NOT NULL
GROUP BY "School1"
ORDER BY "School_Count" DESC
LIMIT 10

-- Drop out rate by country 
SELECT country_name, dropout, count(dropout) as "dropout_rate"
FROM billionaires
WHERE dropout = 'true'
GROUP BY country_name, dropout
ORDER BY "dropout_rate" DESC;

-- Drop out rate by university
SELECT "School1", dropout, count(dropout) as "dropout_rate"
FROM billionaires
WHERE "School1" IS NOT NULL AND dropout = 'true'
GROUP BY "School1", dropout
ORDER BY "dropout_rate" DESC;
