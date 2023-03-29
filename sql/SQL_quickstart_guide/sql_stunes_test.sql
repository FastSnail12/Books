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

/*
 * CREATED BY: Snail
 * DESCRIPTION: В приведенном ниже запросе оператор
 * AND используется вместе с функцией DATE() для
 * поиска всех счетов, оформленных после 02.01.2010,
 * на общую сумму менее $3,00. Результат этого
 * запроса должен удовлетворять одновременно обоим
 * условиям: (DATE (InvoiceDate)>'2010-01-02' AND Total<3).
*/

SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total
FROM 
  invoices
WHERE
  DATE(InvoiceDate) > '2010-01-02' AND Total < 3
ORDER BY
  Total;

/*
 * CREATED BY: Snail
 * DESCRIPTION: В следующем запросе выполняется поиск
 * всех счетов, выставленных в городах, названия которых
 * начинаются с буквы P или с буквы D.
*/

SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total
FROM 
  invoices
WHERE
  BillingCity LIKE 'p%' OR BillingCity LIKE 'd%'
ORDER BY
  Total;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Допустим, нам необходимо получить все
 * счета на сумму свыше $1,98 из любых городов, названия
 * которых начинаются с буквы P или D.
*/

SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total
FROM 
  invoices
WHERE
  Total > 1.98 AND (BillingCity LIKE 'p%' OR BillingCity LIKE 'd%')
ORDER BY
  Total;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Цель отдела продаж компании sTunes — чтобы
 * как можно больше клиентов потратили от $7 до $15 на
 * покупку музыкальной продукции в онлайн-магазине. Для
 * этой цели были созданы следующие категории покупок:
 * Baseline Purchase (базовая покупка), Low Purchase
 * (незначительная покупка), Target Purchase (целевая покупка)
 * и Top Performer (значительная покупка). Поскольку
 * стоимость песни составляет от $0,99 до $1,99, любой счет
 * из этого диапазона считается Baseline Purchase (базовой покупкой).
 * Сумма счетов от $2,00 до $6,99 относится к Low Purchase
 * (незначительной покупке). Поскольку основная цель продаж
 * составляет от $7 до $15, любые покупки в этой категории — это
 * Target Purchase (целевая покупка), а выше $15— Top Performer
 * (значительная покупка). Отдел продаж sTunes хочет узнать,
 * можно ли получить из базы данных какую-либо информацию о
 * продажах для всех перечисленных категорий.
*/

SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total,
  CASE
  WHEN Total < 2.00 THEN 'Baseline Purchase'
  WHEN Total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
  WHEN Total BETWEEN 7.00 AND 15.00 THEN 'Target Purchase'
  ELSE 'Top Performers'
  END AS PurchaseType
FROM 
  invoices
ORDER BY
  BillingCity;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Допустим, отделу маркетинга компании sTunes
 * необходимо более детально проанализировать клиентскую базу.
 * В этом случае он запросит полный список имен клиентов
 * (имя и фамилию) со всеми счетами, выставленными каждому клиенту.
*/

SELECT
  c.LastName,
  c.FirstName,
  i.InvoiceId,
  i.CustomerId,
  i.InvoiceDate,
  i.Total
FROM 
  invoices AS i
INNER JOIN  --LEFT OUTER/LEFT
            --RIGHT OUTER/RIGHT
  customers AS c
ON 
  i.CustomerId = c.CustomerId
ORDER BY
  c.LastName;

/*
 * CREATED BY: Snail
 * DESCRIPTION: Допустим, отдел обслуживания клиентов sTunes
 * хочет поощрить сотрудников, которым удалось совершить десять
 * самых лучших продаж. Служба поддержки клиентов хочет создать
 * для каждого сотрудника табличку со списком их лучших клиентов.
*/

SELECT
  e.FirstName,
  e.LastName,
  e.EmployeeId,
  c.FirstName,
  c.LastName,
  c.SupportRepId,
  i.CustomerId,
  i.Total
FROM
  invoices AS i
INNER JOIN
  customers AS c
ON
  i.CustomerId = c.CustomerId
INNER JOIN
  employees AS e
ON
  c.SupportRepId = e.EmployeeId
ORDER BY
  i.Total DESC
LIMIT 10;

