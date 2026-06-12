/* 
PROJECT 3: SQL DATA ANALYSIS
DecodeLabs Data Analytics Internship 2026 
*/

-- Query 1: Total Revenue and Order Count by Product 
SELECT
	Product,
	COUNT(OrderID) AS Total_Orders,
	SUM(TotalPrice) AS Total_Revenue,
	AVG(TotalPrice) AS Avg_Order_Value
FROM Task3Dataset
GROUP BY Product
ORDER BY Total_Revenue DESC;

-- Query 2: Order Count by Status
SELECT
	OrderStatus,
	COUNT(OrderID) AS Order_Count
FROM Task3Dataset
GROUP BY OrderStatus
ORDER BY Order_Count DESC;

-- Query 3: Delivered Orders above $1,000
SELECT
	OrderID,
	Product,
	TotalPrice,
	OrderStatus
FROM Task3Dataset
WHERE OrderStatus = 'Delivered' AND TotalPrice > 1000
ORDER BY TotalPrice DESC;

-- Query 4: Average Order Value by Referral Source
SELECT 
	ReferralSource,
	COUNT(OrderID) AS Total_Orders,
	AVG(TotalPrice) AS Avg_Order_Value
FROM Task3Dataset
GROUP BY ReferralSource
ORDER BY Avg_Order_Value DESC;

-- Query 5: Payment Method Analysis 
SELECT
	PaymentMethod,
	COUNT(OrderID) AS Total_Orders,
	SUM(TotalPrice) AS Total_Revenue
FROM Task3Dataset
GROUP BY PaymentMethod
ORDER BY Total_Orders DESC;
