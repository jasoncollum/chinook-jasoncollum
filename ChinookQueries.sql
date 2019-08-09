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

-- 6. sales_agent_invoices.sql: 
-- Provide a query that shows the invoices associated with each sales agent. 
-- The resultant table should include the Sales Agent's full name.
-- SELECT e.FirstName, 
--     e.LastName,
--     i.InvoiceId
--     FROM Employee e
--     JOIN Customer c ON c.SupportRepId = e.EmployeeId
--     JOIN Invoice i ON i.CustomerId = c.CustomerId;

-- 7. invoice_totals.sql: 
-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name 
-- for all invoices and customers.
-- SELECT i.Total as InvoiceTotal, c.FirstName as CustomerFirstName, c.LastName as CustomerLastName, c.Country, e.FirstName as AgentFirstName, e.LastName as AgentLastName
-- FROM Invoice i
-- JOIN Customer c ON i.CustomerId = c.CustomerId
-- JOIN Employee e ON c.SupportRepId = e.EmployeeId
-- WHERE e.Title = 'Sales Support Agent';

-- 8. total_invoices_{year}.sql: 
-- How many Invoices were there in 2009 and 2011?
-- SELECT COUNT(*)
-- FROM Invoice
-- WHERE InvoiceDate BETWEEN '2009-01-01' AND '2010-01-01'
-- OR InvoiceDate BETWEEN '2011-01-01' AND '2012-01-01';

-- 9. total_sales_{year}.sql: 
-- What are the respective total sales for each of those years?
-- SELECT SUM(CASE WHEN InvoiceDate BETWEEN '2009' AND '2010' THEN Total END) AS Total2009, 
--     SUM(CASE WHEN InvoiceDate BETWEEN '2011' AND '2012' THEN Total END) AS Total2011
-- FROM Invoice;

-- 10. invoice_37_line_item_count.sql: 
-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
-- SELECT COUNT(*) FROM InvoiceLine
-- WHERE InvoiceId = 37;

-- 11. line_items_per_invoice.sql: 
-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. 
-- HINT: GROUP BY
-- SELECT COUNT(*) AS LinedItemsCount, InvoiceId
-- FROM InvoiceLine
-- GROUP BY InvoiceId;

-- 12. line_item_track.sql: 
-- Provide a query that includes the purchased track name with each invoice line item.
-- SELECT il.InvoiceLineId, t.Name AS TrackName
-- FROM InvoiceLine il
-- JOIN Track t ON t.TrackId = il.TrackId
-- ORDER BY il.InvoiceLineId ASC;

-- 13. line_item_track_artist.sql: 
-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
-- SELECT il.InvoiceLineId, t.Name AS TrackName, ar.Name AS ArtistName
-- FROM InvoiceLine il
-- JOIN Track t ON t.TrackId = il.TrackId
-- JOIN Album al ON al.AlbumId = t.AlbumId
-- JOIN Artist ar ON ar.ArtistId = ar.ArtistId
-- ORDER BY il.InvoiceLineId ASC;

-- 14. country_invoices.sql: 
-- Provide a query that shows the # of invoices per country. 
-- HINT: GROUP BY
-- SELECT COUNT(*) AS InvoiceTotal, BillingCountry
-- FROM Invoice
-- GROUP BY BillingCountry;

-- 15. playlists_track_count.sql: 
-- Provide a query that shows the total number of tracks in each playlist. 
-- The Playlist name should be include on the resulant table.
-- SELECT pl.Name AS PlaylistName, COUNT(*) AS TrackName
-- FROM Playlist pl
-- JOIN PlaylistTrack pt ON pt.PlaylistId = pl.PlaylistId
-- JOIN Track tr ON tr.TrackId = pt.TrackId
-- GROUP BY pl.Name;

-- 16. tracks_no_id.sql: 
-- Provide a query that shows all the Tracks, but displays no IDs. 
-- The result should include the Album name, Media type and Genre.
-- SELECT al.Title AS AlbumTitle, mt.Name AS MediaType, g.Name AS Genre
-- FROM Track tr
-- JOIN Album al ON al.AlbumId = tr.AlbumId
-- JOIN MediaType mt ON mt.MediaTypeId = tr.MediaTypeId
-- JOIN Genre g ON g.GenreId = tr.GenreId;

17.