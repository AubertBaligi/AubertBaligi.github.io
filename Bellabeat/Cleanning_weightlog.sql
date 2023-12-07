IF EXISTS(SELECT*
            FROM bellabeat.dbo.weight_cleanned )
DROP TABLE bellabeat.dbo.weight_cleanned

CREATE TABLE bellabeat.dbo.weight_cleanned
(Id FLOAT,Date DATETIME2(7),WeightKg FLOAT)

INSERT INTO bellabeat.dbo.weight_cleanned  

SELECT
Id ,
Date,
WeightKg


FROM bellabeat.dbo.weightLogInfo 