CREATE VIEW dropouts AS
SELECT b.billionaire_id, b.name, b.net_worth, b.country_name, w.country_code, w.gdp, b.dropout
FROM billionaires AS b
  JOIN world_bank AS w
  	ON (b.country_name = w.country_name)
WHERE b.dropout = true;

