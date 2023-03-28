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
 * DESCRIPTION: Данный запрос осуществляет выборку полей имени, фамилии,
 * электронной почты из таблицы customers (клиентов).
*/

SELECT 
  FirstName, 
  LastName, 
  Email 
FROM 
  customers;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Данный запрос осуществляет выборку полей имени, фамилии,
 * электронной почты и номера телефона из таблицы customers (клиенты) и
 * демонстрирует четыре различных способа использования псевдонима.
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
 * DESCRIPTION: Данный запрос осуществляет выборку полей имени, фамилии и
 * электронной почты из таблицы customers (клиенты), отсортированных по
 * \фамилии (Last Name).
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
 * DESCRIPTION: Данный запрос осуществляет выборку полей имени, фамилии и
 * электронной почты из таблицы customers (клиенты), отсортированных
 * сначала по имени (по возрастанию), а затем по фамилии (по убыванию).
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
 * DESCRIPTION: Данный запрос осуществляет выборку полей имени, фамилии и
 * электронной почты из таблицы customers (клиенты), отсортированных
 * сначала по имени (по возрастанию), а затем по фамилии (по убыванию).
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
 * DESCRIPTION: В следующем примере мы рассмотрим, как арифметические
 * операторы используются вместе с условием SELECT для увеличения
 * значения поля Total из таблицы invoices базы данных sTunes.
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
 * DESCRIPTION: Предположим, что отдел продаж компании sTunes хочет
 * знать, сколько клиентов купили две песни стоимостью по $0,99 каждая.
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

/*
 * CREATED BY: Snail
 * DESCRIPTION: Рассмотрим следующий запрос, который возвращает счета,
 * находящиеся в диапазоне от $1,98 до $5,00.
*/

SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total
FROM 
  invoices
WHERE
  Total BETWEEN 1.98 AND 5.00 --Total >= 1.98 AND Total <= 5.00
ORDER BY
  InvoiceDate;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Следующий запрос возвращает только суммы
 * счетов-фактур, равные $1,98 или $3,96.
*/

SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total
FROM 
  invoices
WHERE
  Total IN (1.98, 3.96)
ORDER BY
  InvoiceDate;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Следующий запрос возвращает все счета,
 * выставленные в городе Тусон.
*/

SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total
FROM 
  invoices
WHERE
  BillingCity = 'Tucson'
ORDER BY
  Total;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Запрос ищет любые счета, выставленные
 * в городах на букву T. В результат теперь попали
 * Торонто и Тусон.
*/

SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total
FROM 
  invoices
WHERE
  BillingCity LIKE 'T%'
ORDER BY
  Total;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Добавление еще одного символа % перед
 * буквой T изменит условие поиска на поиск счета,
 * выставленного в городе, название которого содержит
 * букву T.
*/

SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total
FROM 
  invoices
WHERE
  BillingCity LIKE '%T%'
ORDER BY
  Total;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Оператор LIKE также используется для
 * исключения результатов, соответствующих указанным
 * параметрам. Для этого необходимо поставить ключевое
 * слово NOT перед оператором LIKE, и вы сможете
 * исключить записи из результата запроса.
*/

SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total
FROM 
  invoices
WHERE
  BillingCity NOT LIKE '%T%'
ORDER BY
  Total;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Используя все знания как о числах,
 * так и о тексте, вы сможете теперь выполнить поиск
 * счета, выставленного в определенную дату.
*/

SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total
FROM 
  invoices
WHERE
  InvoiceDate = '2009-01-03 00:00:00'
ORDER BY
  Total DESC;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Функция DATE() позволяет исключить
 * время при указании параметров даты.
*/

SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total
FROM 
  invoices
WHERE
  DATE(InvoiceDate) = '2009-01-03'
ORDER BY
  Total DESC;
