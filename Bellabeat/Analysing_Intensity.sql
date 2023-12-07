--Determining when users are mostly active

SELECT 
DISTINCT(CAST(ActivityHour AS time)) AS activity_time,
         AVG(TotalIntensity) OVER (PARTITION BY DATEPART(Hour,ActivityHour)) AS Average_intensity,
		 AVG(METs/10.0) OVER (PARTITION BY DATEPART(Hour,ActivityHour)) AS Average_METs
FROM
   bellabeat.dbo.hourly_activity AS hourly_activity

   JOIN bellabeat.dbo.minuteMETsNarrow AS METs

   ON
        hourly_activity.Id = METs.Id AND
        hourly_activity.ActivityHour = METs.ActivityMinute 
	
      

   ORDER BY 
   Average_intensity DESC

  

   
  

