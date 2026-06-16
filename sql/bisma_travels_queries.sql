SELECT * FROM customers;
SELECT * FROM bookings;
SELECT * FROM leads;
SELECT customers.customer_id, customers.customer_name, customers.customer_tier,
COUNT (bookings.booking_id) AS Total_Bookings,
SUM (bookings.revenue_INR) AS Total_Revenue
FROM customers
JOIN bookings ON customers.customer_id = bookings.customer_id
GROUP BY customers.customer_id, customers.customer_name, customers.customer_tier
ORDER BY Total_Revenue DESC;

SELECT DISTINCT customers.customer_name, customers.city_of_origin, bookings.destination
FROM customers
JOIN bookings ON customers.customer_id = bookings.customer_id
WHERE customers.is_returning = 'Yes'
AND bookings.destination IN ('Kerala', 'Kashmir');

SELECT l.Action_Type,
       COUNT(l.Lead_ID) AS Total_Leads,
       SUM(CASE WHEN l.Lead_Status = 'Converted' THEN 1 ELSE 0 END) AS Converted,
       ROUND(100.0 * SUM(CASE WHEN l.Lead_Status = 'Converted' THEN 1 ELSE 0 END) / COUNT(*), 1) AS Conversion_Rate_pct
FROM leads l
LEFT JOIN customers c ON l.Customer_ID = c.Customer_ID
GROUP BY l.Action_Type;

SELECT customers.customer_name, customers.customer_tier, 
COUNT(bookings.booking_id) AS Bookings
FROM customers
JOIN bookings ON customers.customer_id = bookings.customer_id
LEFT JOIN leads ON customers.customer_id = leads.customer_id
WHERE leads.customer_id IS NULL
GROUP BY customers.customer_name, customers.customer_tier
HAVING COUNT (bookings.booking_id) >= 3;

SELECT bookings.month_name, bookings.year, customers.customer_tier,
SUM (bookings.revenue_INR) AS Revenue,
SUM (bookings.net_profit_INR) AS Profit
FROM bookings
JOIN customers  ON bookings.customer_id = customers.customer_id
GROUP BY bookings.year, bookings.month_num, bookings.month_name, customers.customer_tier
ORDER BY bookings.year, bookings.month_num;