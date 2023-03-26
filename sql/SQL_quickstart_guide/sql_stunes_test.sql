/*
 * CREATED BY: Snail
 * DESCRIPTION: Все записи в albums
*/

SELECT 
  * 
FROM 
  albums;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Данный запрос осуществляет выборку полей имени, фамилии, электронной почты из таблицы customers (клиентов).
*/

SELECT 
  FirstName, 
  LastName, 
  Email 
FROM 
  customers;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Данный запрос осуществляет выборку полей имени, фамилии, электронной почты и номера телефона из таблицы customers (клиенты) и демонстрирует четыре различных способа использования псевдонима.
*/

SELECT
  FirstName AS 'First Name',
  LastName AS [Last Name],
  Email AS EMAIL,
  Phone CELL
FROM
  customers;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Данный запрос осуществляет выборку полей имени, фамилии и электронной почты из таблицы customers (клиенты), отсортированных по фамилии (Last Name).
*/

SELECT 
  FirstName AS [First Name],
  LastName AS [Last Name],
  Email AS [EMAIL]
FROM 
  customers
ORDER BY
  LastName ASC;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Данный запрос осуществляет выборку полей имени, фамилии и электронной почты из таблицы customers (клиенты), отсортированных сначала по имени (по возрастанию), а затем по фамилии (по убыванию).
*/

SELECT 
  FirstName AS [First Name],
  LastName AS [Last Name],
  Email AS [EMAIL]
FROM 
  customers
ORDER BY
  FirstName ASC,
  LastName DESC;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Данный запрос осуществляет выборку полей имени, фамилии и электронной почты из таблицы customers (клиенты), отсортированных сначала по имени (по возрастанию), а затем по фамилии (по убыванию).
*/

SELECT 
  FirstName AS [First Name],
  LastName AS [Last Name],
  Email AS [EMAIL]
FROM 
  customers
ORDER BY
  FirstName ASC,
  LastName DESC
LIMIT 10;

/*
 * CREATED BY: Snail
 * DESCRIPTION: В следующем примере мы рассмотрим, как арифметические операторы используются вместе с условием SELECT для увеличения значения поля Total из таблицы invoices базы данных sTunes.
*/

SELECT
  Total AS [Original Amount],
  Total + 10 AS [Addition Operator],
  Total - 10 AS [Subtraction Operator],
  Total / 10 AS [Division Operator],
  Total * 10 AS [Multiplication Operator],
  Total % 10 AS [Modulo Operator],
  Total * 1.15
FROM 
  invoices
ORDER BY
  Total DESC;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Предположим, что отдел продаж компании sTunes хочет знать, сколько клиентов купили две песни стоимостью по $0,99 каждая.
*/

SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total
FROM 
  invoices
WHERE
  Total = 1.98
ORDER BY
  InvoiceDate;
