-- =====================================================
-- Deliverable W6.4: Performance Tuning & Missing Indexes
-- Database: AdventureWorks2022
-- =====================================================

-- Step 1: Query demonstrating the Missing Index recommendation
SELECT SalesOrderID, SalesOrderDetailID, CarrierTrackingNumber, OrderQty, UnitPrice
FROM Sales.SalesOrderDetail
WHERE CarrierTrackingNumber = '4911-403C-98';
GO

-- Step 2: Creating the Non-Clustered Index based on SSMS recommendation
CREATE NONCLUSTERED INDEX IX_SalesOrderDetail_CarrierTrackingNumber
ON [Sales].[SalesOrderDetail] ([CarrierTrackingNumber])
INCLUDE ([SalesOrderID], [OrderQty], [UnitPrice]);
GO

-- Step 3: Re-running the query to verify performance improvement (Index Seek)
SELECT SalesOrderID, SalesOrderDetailID, CarrierTrackingNumber, OrderQty, UnitPrice
FROM Sales.SalesOrderDetail
WHERE CarrierTrackingNumber = '4911-403C-98';
GO