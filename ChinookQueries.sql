-- 1. non_usa_customers.sql: 
-- Provide a query showing:  Customers (just their full names, customer ID and country) who are not in the US.
-- SELECT FirstName, LastName, CustomerId, Country
-- FROM Customer
-- WHERE Country != 'usa';

-- 2. brazil_customers.sql: 
-- Provide a query only showing the Customers from Brazil.
-- SELECT * FROM Customer WHERE Country = 'Brazil';

-- 3. brazil_customers_invoices.sql: 
-- Provide a query showing the Invoices of customers who are from Brazil. 
-- The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
-- SELECT c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
-- FROM Invoice i
-- JOIN Customer c ON i.CustomerId = c.CustomerId
-- WHERE c.Country = 'Brazil';

-- 4. sales_agents.sql: 
-- Provide a query showing only the Employees who are Sales Agents.
-- SELECT FirstName, LastName, Title FROM Employee
-- WHERE title = 'Sales Support Agent';

-- 5. unique_invoice_countries.sql: 
-- Provide a query showing a unique/distinct list of billing countries from the Invoice table.
-- SELECT DISTINCT BillingCountry FROM Invoice;

6.
