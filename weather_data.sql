-- Rename the column "Weather" to "Weather_Condition"
ALTER TABLE `1. weather data`
CHANGE Weather Weather_Condition VARCHAR(255);

-- Mean visibility of the dataset
SELECT avg(Visibility_km)
FROM `1. weather data`;

-- Find all instances where the weather is clear and the relative humidity is greater than 50, or visibility is above 40
SELECT *
FROM `1. weather data`
WHERE Weather_Condition = 'Clear'
  AND (`Rel Hum_%` > 50 OR Visibility_km > 40);

-- Find the number of weather conditions that include snow.
SELECT COUNT(DISTINCT Weather_Condition) AS num_snow_conditions
FROM `1. weather data`
WHERE Weather_Condition LIKE '%snow%';
