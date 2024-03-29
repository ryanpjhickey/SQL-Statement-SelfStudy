use fcc_sql_guides_database

/* What is an inner join in SQL?
This is the default type of join if no join is specified. It returns all rows in which there is at least one match in both tables. */

SELECT * FROM A x JOIN B y ON y.aId = x.Id



/*What is a left join in SQL?
A left join returns all rows from the left table, and the matched rows from the right table. Rows in the left table will be returned even if there was no match in the right table. The rows from the left table with no match in the right table will have null for right table values. */

SELECT * FROM A x LEFT JOIN B y ON y.aId = x.Id


/* What is a right join in SQL?
A right join returns all rows from the right table, and the matched rows from the left table. Opposite of a left join, this will return all rows from the right table even where there is no match in the left table. Rows in the right table that have no match in the left table will have null values for left table columns. */

SELECT * FROM A x RIGHT JOIN B y ON y.aId = x.Id

/* What is a full join in SQL?
A full join returns all rows for which there is a match in either of the tables. So if there are rows in the left table that do not have matches in the right table, those will be included. As well as if there are rows in the right table that do not have matches in the left table, those will be included. */

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName