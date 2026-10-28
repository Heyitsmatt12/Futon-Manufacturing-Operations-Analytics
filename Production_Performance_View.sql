
USE FutonManufacturing;
GO

-- Production Performance View
-- Used for the manufacturing operations dashboard

CREATE OR ALTER VIEW dbo.vw_ProductionPerformance
AS

SELECT
    po.ProductionOrderID,
    po.WorkOrderNumber,
    po.ItemID,
    i.ItemCode,
    i.ItemName,
    po.WorkCenterID,
    po.WarehouseID,

    -- Production Dates
    po.StartDate,
    po.PlannedCompletionDate,
    po.ActualCompletionDate,
    YEAR(po.StartDate) AS ProductionYear,
    MONTH(po.StartDate) AS ProductionMonth,

    -- Production Details
    po.Status AS ProductionStatus,
    po.Priority,
    po.OrderQuantity,
    po.QuantityCompleted,
    po.QuantityScrapped,

    -- Completed Order Flag
    CASE
        WHEN po.Status = 'Completed' THEN 1
        ELSE 0
    END AS IsCompleted,

    -- On-Time Completion Flag
    CASE
        WHEN po.Status = 'Completed'
             AND po.ActualCompletionDate IS NOT NULL
             AND po.PlannedCompletionDate IS NOT NULL
             AND po.ActualCompletionDate <= po.PlannedCompletionDate
        THEN 1
        ELSE 0
    END AS IsCompletedOnTime,

    -- Quantity Completion Percentage
    CASE
        WHEN po.OrderQuantity > 0
        THEN
            po.QuantityCompleted * 100.0
            / po.OrderQuantity
        ELSE NULL
    END AS QuantityCompletionPercentage

FROM dbo.ProductionOrder AS po

LEFT JOIN dbo.Items AS i
    ON po.ItemID = i.ItemID;
GO
