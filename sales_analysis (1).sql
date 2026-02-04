-- Monthly Sales Trend
SELECT 
    MONTH(Order_Date) AS Month,
    SUM(Sales_Amount) AS Total_Sales
FROM sales_data
GROUP BY MONTH(Order_Date)
ORDER BY Month;

-- Top Performing Products
SELECT 
    Product,
    SUM(Sales_Amount) AS Revenue
FROM sales_data
GROUP BY Product
ORDER BY Revenue DESC;

-- Regional Performance
SELECT 
    Region,
    SUM(Sales_Amount) AS Total_Sales
FROM sales_data
GROUP BY Region;
