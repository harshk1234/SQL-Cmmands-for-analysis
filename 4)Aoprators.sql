1)Create a column that divides the standard_amt_usd by the standard_qty to find the unit price for standard paper for each order. Limit the results to the first 10 orders, and include the id and account_id fields.

SELECT id, account_id, standard_amt_usd/standard_qty AS unit_price
FROM orders
LIMIT 10;

WILDCARD
LIKE This allows you to perform operations similar to using WHERE and =, but for cases when you might not know exactly what you are looking for.

All the companies whose names start with 'C'.
SELECT * 
FROM accounts
WHERE name LIKE 'C%'


O/P
name
CVS Health
Chevron
Costco
Cardinal Health
Citigroup
Comcast
Cisco Systems
Caterpillar
Campbell Soup


IN
IN This allows you to perform operations similar to using WHERE and =, but for more than one condition.

1)Use the accounts table to find the account name, primary_poc, and sales_rep_id for Walmart, Target, and Nordstrom.
SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name IN ('Walmart', 'Target', 'Nordstrom');

Output3 results
name	primary_poc	sales_rep_id
Walmart	Tamara Tuma	321500
Target	Luba Streett	321660
Nordstrom	Yan Crater	321820
