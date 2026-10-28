
USE FutonManufacturing;
GO

-- Quality Performance View
-- Used for the quality acceptance dashboard

CREATE OR ALTER VIEW dbo.vw_QualityPerformance
AS

SELECT
    qi.InspectionID,
    qi.ItemID,
    i.ItemCode,
    i.ItemName,

    -- Inspection Details
    qi.InspectionType,
    qi.ReferenceType,
    qi.ReferenceNumber,
    qi.InspectionDate,
    YEAR(qi.InspectionDate) AS InspectionYear,
    MONTH(qi.InspectionDate) AS InspectionMonth,
    qi.InspectedBy,

    -- Quality Quantities
    qi.QuantityInspected,
    qi.QuantityAccepted,
    qi.QuantityRejected,

    -- Acceptance Rate
    CASE
        WHEN qi.QuantityInspected > 0
        THEN
            qi.QuantityAccepted * 100.0
            / qi.QuantityInspected
        ELSE NULL
    END AS AcceptanceRate,

    -- Rejection Rate
    CASE
        WHEN qi.QuantityInspected > 0
        THEN
            qi.QuantityRejected * 100.0
            / qi.QuantityInspected
        ELSE NULL
    END AS RejectionRate

FROM dbo.QualityInspection AS qi

LEFT JOIN dbo.Items AS i
    ON qi.ItemID = i.ItemID;
GO
