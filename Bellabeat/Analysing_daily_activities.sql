--calculate the number of days each user tracks physical activity
/*SELECT
DISTINCT Id,
COUNT(ActivityDate) OVER (PARTITION BY Id) AS days_activity_recorded

FROM bellabeat.dbo.daily_activity_cleanned 

ORDER BY days_activity_recorded DESC*/

--calculate average minute or hour for each activity
SELECT
   ROUND( AVG(VeryActiveMinutes),2) AS AverageVeryActiveMinutes,
   ROUND(AVG(FairlyActiveMinutes),2) AS AverageFairlyMinutes,
   ROUND(AVG(LightlyActiveMinutes)/60.0,2) AS AverageLightlyActiveHours,
	ROUND(AVG(SedentaryMinutes)/60.0,2) AS AverageSedentaryHours

FROM bellabeat.dbo.daily_activity_cleanned 