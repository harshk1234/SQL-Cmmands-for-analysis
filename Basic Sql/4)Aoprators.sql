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






NOT
NOT This is used with IN and LIKE to select all of the rows NOT LIKE or NOT IN a certain condition.

Use the accounts table to find the account name, primary poc, and sales rep id for all stores except Walmart, Target, and Nordstrom.

SELECT name,primary_poc,sales_rep_id
FROM accounts
WHERE name NOT LIKE 'c%';

name	primary_poc	sales_rep_id
Walmart	Tamara Tuma	321500
Exxon Mobil	Sung Shields	321510
Apple	Jodee Lupo	321520
Berkshire Hathaway	Serafina Banda	321530
McKesson	Angeles Crusoe	321540
UnitedHealth Group	Savanna Gayman	321550
CVS Health	Anabel Haskell	321560




AND
Write a query that returns all the orders where the standard_qty is over 1000, the poster_qty is 0, and the gloss_qty is 0.
SELECT *
FROM orders
WHERE standard_qty > 1000 AND poster_qty = 0 AND gloss_qty = 0;

standard_qty	poster_qty	gloss_qty
1171	0	0
1552	0	0



When you use the BETWEEN operator in SQL, do the results include the values of your endpoints, or not? Figure out the answer to this important question by writing a query that displays the order date and gloss_qty data for all orders where gloss_qty is between 24 and 29. Then look at your output to see if the BETWEEN operator included the begin and end values or not.
SELECT occurred_at, gloss_qty 
FROM orders
WHERE gloss_qty BETWEEN 24 AND 29;

occurred_at	gloss_qty
2016-02-01T19:27:27.000Z	29
2016-03-02T15:29:32.000Z	24
2016-10-14T23:54:21.000Z	28
2015-08-09T18:29:20.000Z	24
2016-02-01T20:00:37.000Z	26
2016-04-30T07:46:13.000Z	26
2016-06-28T06:18:20.000Z	25
2016-08-26T16:47:57.000Z	25
2016-10-24T21:46:10.000Z	28
2016-11-23T04:38:57.000Z	25
2016-12-23T13:19:56.000Z	29
2014-09-13T05:11:21.000Z	28
2014-12-11T10:36:32.000Z	25
2015-10-01T15:53:49.000Z	25
2016-03-19T07:18:30.000Z	26
2016-12-07T06:28:31.000Z	28
2016-11-20T03:49:54.000Z	29
2015-10-01T22:44:46.000Z	27
2016-11-22T08:08:54.000Z	29
2016-03-27T11:31:53.000Z	29
2016-06-14T11:18:07.000Z	24

Use the web_events table to find all information regarding individuals who were contacted via the organic or adwords channels, and started their account at any point in 2016, sorted from newest to oldest.
SELECT *
FROM web_events
WHERE channel IN ('organic', 'adwords') AND occurred_at BETWEEN '2016-01-01' AND '2017-01-01'
ORDER BY occurred_at DESC;

id	account_id	occurred_at	channel
8493	4141	2016-12-31T16:31:23.000Z	organic
5661	1851	2016-12-31T06:55:38.000Z	organic
5562	1791	2016-12-31T02:08:50.000Z	adwords
7703	3351	2016-12-30T21:06:53.000Z	adwords
7921	3521	2016-12-30T20:15:48.000Z	organic
6416	2401	2016-12-30T17:51:36.000Z	adwords
4553	1151	2016-12-30T15:57:41.000Z	organic
8129	3781	2016-12-30T06:52:24.000Z	organic
6200	2281	2016-12-30T03:43:11.000Z	adwords
6937	2801	2016-12-29T14:51:48.000Z	organic
7532	3201	2016-12-29T10:08:28.000Z	adwords
7173	2941	2016-12-28T21:46:53.000Z	organic
8114	3761	2016-12-28T13:44:22.000Z	adwords


Find all the company names that start with a 'C' or 'W', and the primary contact contains 'ana' or 'Ana', but it doesn't contain 'eana'.

SELECT *
FROM accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%') 
           AND ((primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%') 
           AND primary_poc NOT LIKE '%eana%');


id	name	website	lat	long	primary_poc	sales_rep_id
1061	CVS Health	www.cvshealth.com	41.46779585	-73.76763638	Anabel Haskell	321560
1361	Comcast	www.comcastcorporation.com	42.54154764	-76.24992387	Shana Sanborn	321650




