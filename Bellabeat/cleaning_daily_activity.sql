IF EXISTS(SELECT*
            FROM bellabeat.dbo.daily_activity_cleanned )
DROP TABLE bellabeat.dbo.daily_activity_cleanned 

CREATE TABLE bellabeat.dbo.daily_activity_cleanned
(Id FLOAT,ActivityDate DATETIME2(7),TotalSteps INT,TotalDistance FLOAT,TrackerDistance FLOAT,LoggedActivitiesDistance FLOAT,
VeryActiveDistance FLOAT,ModeratelyActiveDistance FLOAT,LightActiveDistance FLOAT,SedentaryActiveDistance FLOAT,VeryActiveMinutes INT,
FairlyActiveMinutes INT,LightlyActiveMinutes INT,SedentaryMinutes INT,Calories FLOAT)

INSERT INTO bellabeat.dbo.daily_activity_cleanned 
(Id,ActivityDate ,TotalSteps ,TotalDistance ,VeryActiveDistance,ModeratelyActiveDistance ,LightActiveDistance ,SedentaryActiveDistance ,
VeryActiveMinutes ,FairlyActiveMinutes ,LightlyActiveMinutes ,SedentaryMinutes ,Calories)

SELECT
Id,
CAST(ActivityDate AS datetime2(7)) AS ActivityDate,
TotalSteps,
CAST(TotalDistance AS FLOAT) AS TotalDistance,
CAST(VeryActiveDistance AS FLOAT) AS VeryActiveDistance,
CAST(ModeratelyActiveDistance AS FLOAT) AS ModeratelyActiveDistance,
CAST(LightActiveDistance AS FLOAT) AS LightActiveDistance,
CAST(SedentaryActiveDistance AS FLOAT) AS Sedentary,
VeryActiveMinutes,
FairlyActiveMinutes,
LightlyActiveMinutes,
SedentaryMinutes,
Calories

FROM bellabeat.dbo.daily_activity