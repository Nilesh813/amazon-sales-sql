Create database Amazon_Sales;

USE Amazon_Sales;
GO

CREATE TABLE SalesData (
    [Row ID] INT,
    [Order ID] NVARCHAR(50),
    [Order Date] DATE,
    [Ship Date] DATE,
    [Ship Mode] NVARCHAR(50),
    [Customer ID] NVARCHAR(50),
    [Customer Name] NVARCHAR(100),
    [Segment] NVARCHAR(50),
    [Postal Code] NVARCHAR(20),
    [City] NVARCHAR(100),
    [State] NVARCHAR(100),
    [Country] NVARCHAR(100),
    [Region] NVARCHAR(50),
    [Market] NVARCHAR(50),
    [Product ID] NVARCHAR(50),
    [Category] NVARCHAR(50),
    [Sub-Category] NVARCHAR(50),
    [Product Name] NVARCHAR(200),
    [Sales] DECIMAL(18, 2),
    [Quantity] INT,
    [Discount] DECIMAL(5, 2),
    [Profit] DECIMAL(18, 2),
    [Shipping Cost] DECIMAL(18, 2),
    [Order Priority] NVARCHAR(50)
);

SELECT * FROM [dbo].[Orders$];
SELECT * FROM [dbo].[People$];
SELECT * FROM [dbo].[Returns$];

--this query is fetching the table order for specific country
SELECT * 
FROM [dbo].[Orders$]
WHERE [Country] = 'India';


SELECT [Order ID], [Order Date], [Customer Name], [City], [State], [Sales], [Profit]
FROM [dbo].[Orders$]
WHERE [Country] = 'India';

SELECT TOP 10 * 
FROM [dbo].[Orders$]
WHERE Country = 'India'
ORDER BY Profit DESC;