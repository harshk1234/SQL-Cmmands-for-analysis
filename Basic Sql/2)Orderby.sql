1)Write a query to return the 10 earliest orders in the orders table. Include the id, occurred_at, and total_amt_usd.

SELECT id, occurred_at, total_amt_usd
FROM orders
ORDER BY occurred_at
LIMIT 10;

id	occurred_at	total_amt_usd
5786	2013-12-04T04:22:44.000Z	627.48
2415	2013-12-04T04:45:54.000Z	2646.77
4108	2013-12-04T04:53:25.000Z	2709.62
4489	2013-12-05T20:29:16.000Z	277.13
287	2013-12-05T20:33:56.000Z	3001.85
1946	2013-12-06T02:13:20.000Z	2802.90
6197	2013-12-06T12:55:22.000Z	7009.18
3122	2013-12-06T12:57:41.000Z	1992.13
6078	2013-12-06T13:14:47.000Z	6680.06
2932	2013-12-06T13:17:25.000Z	2075.94


2)Write a query to return the top 5 orders in terms of largest total_amt_usd. Include the id, account_id, and total_amt_usd.
SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC 
LIMIT 5;

id	account_id	total_amt_usd
4016	4251	232207.07
3892	4161	112875.18
3963	4211	107533.55
5791	2861	95005.82
3778	4101	93547.84

3)Write a query to return the lowest 20 orders in terms of smallest total_amt_usd. Include the id, account_id, and total_amt_usd.
SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd
LIMIT 20;

id	account_id	total_amt_usd
6375	3651	0.00
6435	3801	0.00
6312	3541	0.00
6323	3551	0.00
4446	1231	0.00
6009	3141	0.00
4625	1411	0.00
5612	2601	0.00
6281	3491	0.00
4770	1521	0.00
4445	1221	0.00
1353	1951	0.00
4490	1281	0.00
5001	1791	0.00
4844	1571	0.00
124	1131	0.00
2518	2881	0.00
5057	1851	0.00
6856	4451	0.00
6523	3991	0.00

4)Write a query that displays the order ID, account ID, and total dollar amount for all the orders, sorted first by the account ID (in ascending order), and then by the total dollar amount (in descending order).
SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY account_id, total_amt_usd DESC;
