
- JOIN [INNER JOIN] -> combine 2 tables 
- LEFT JOIN -> keep all rows from the first table, regardless of whether these is a matching row in the second table
- CROSS JOIN -> doesn't require ON statement.
- UNION -> combine two tables if they have the same columns
- WITH -> allows us to perform a separate query 

- **Primary Key** - uniquely keys, can't be NULL, must be unique
- **Foreing Key** - when the primary key appear in a different table
- *customer_id* is a primary key when it appears in *customers*
- but a foreing key when it appears in *orders*
---

```sql

SELECT *
FROM orders 
JOIN subscriptions 
  ON orders.subscription_id = subscriptions.subscription_id;

---

SELECT *
FROM orders 
JOIN subscriptions 
  ON orders.subscription_id = subscriptions.subscription_id
  WHERE subscriptions.description = "Fashion Magazine";

---

SELECT COUNT(*)
FROM newspaper 
JOIN online 
ON newspaper.id = online.id;

--- show users who not subscribe to online edition

SELECT *
FROM newspaper
LEFT JOIN online 
ON newspaper.id = online.id
WHERE online.id IS NULL;

--- inner join using foreing key 

SELECT *
FROM classes
JOIN students 
ON students.class_id = classes.id;

---

SELECT *
FROM newspaper
CROSS JOIN months;

--- union -> combine 2 table 

SELECT *
FROM newspaper
UNION 
SELECT *
FROM online;

```