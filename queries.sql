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

