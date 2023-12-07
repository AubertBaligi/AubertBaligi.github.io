--Calculating nuumber of users and daily averages

--1)Tracking their Physical Activities
SELECT 
     COUNT(DISTINCT Id) AS users_Tracking_activities,
     AVG(Totalsteps) AS average_steps,
	 AVG(TotalDistance) AS average_distance,
	 AVG(Calories) AS average_Calories

FROM bellabeat.dbo.daily_activity_cleanned 

--2)Tracking heart rate
SELECT
   COUNT ( DISTINCT Id) AS users_Tracking_heartRate,
	AVG(Value) AS average_heartRate,
	MIN(Value) AS minimum_heartRate,
	MAX(Value) AS maximum_heartRate
	
FROM bellabeat.dbo.heartrate_seconds 

--3)Tracking sleep
SELECT 
   COUNT(DISTINCT Id) AS users_Tracking_sleep,
   AVG(TotalMinutesAsleep)/60.0 AS average_hours_asleep,
   MIN(TotalMinutesAsleep)/60.0 AS minimum_hours_asleep,
   MAX(TotalMinutesAsleep)/60.0 AS maximum_hours_asleep,
   AVG(TotalTimeInBed)/60.0 AS average_hours_inbed
FROM bellabeat.dbo.sleep_day 

--4)Tracking weight
SELECT 
    COUNT(DISTINCT Id) AS users_Tracking_weight,
	AVG(WeightKg) AS average_weight,
	MIN(WeightKg) AS minimum_weight,
	MAX(WeightKg) AS maximum_weight
From bellabeat.dbo.weight_cleanned

