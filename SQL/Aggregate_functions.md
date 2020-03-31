They need to perform calculations using SQL.

---

- **COUNT()** -> count the number of rows 
- **SUM()** -> sum of the values in a column
- **MAX() / MIN()** -> largest / smallest value 
- **AVG()** -> average of the values in a column 
- **ROUND()** -> round the values in the column 
- **HAVING** -> similar to WHERE 

---

```sql
--- count = calculate the rows 

SELECT COUNT(*)
FROM fake_apps
WHERE price = 0;

--- sum the value 

SELECT SUM(downloads)
FROM fake_apps;

--- get the avg and then round them 

SELECT ROUND(AVG(price), 2)
FROM fake_apps;

--- count the app by price

SELECT price, COUNT(*)
FROM fake_apps
WHERE downloads > 20000
GROUP BY price;

--- sum all downloads by category

SELECT category, SUM(downloads)
FROM fake_apps
GROUP BY category;

--- 1 - refer to the first element after SELECT

SELECT category, price, AVG(downloads)
FROM fake_apps
WHERE price > 0
GROUP BY 1, 2;

--- 

SELECT price, ROUND(AVG(downloads)), COUNT(*)
FROM fake_apps
GROUP BY 1
HAVING COUNT(2) > 10;

--- count the number of subscribers by months

SELECT month, COUNT(*)
FROM newspaper
CROSS JOIN months
WHERE start_month <= month AND
  end_month >= month
GROUP BY month;

```
