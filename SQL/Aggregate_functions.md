They need to perform calculations using SQL.

---

- **COUNT()** -> count the number of rows 
- **SUM()** -> sum of the values in a column
- **MAX() / MIN()** -> largest / smallest value 
- **AVG()** -> average of the values in a column 
- **ROUND()** -> round the values in the column 

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
```