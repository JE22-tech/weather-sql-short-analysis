-- SQL spørringer i prosjektet

-- Gjennomsnittstemperatur per måned
SELECT substr(Date, 1, 7) AS month, AVG(Temp) AS avg_temp
FROM weather
GROUP BY month
ORDER BY month;


-- Gjennomsnittlig nedbør per by
SELECT Location, AVG(Precipitation_mm) AS avg_precip
FROM weather
GROUP BY Location
ORDER BY avg_precip DESC;

-- Gjennomsnittstemperatur per by
SELECT Location, AVG(Temperature_C) AS avg_temp
FROM weather
GROUP BY Location
ORDER BY avg_temp DESC;


-- Høyest og lavest temperatur per by
SELECT Location, MAX(Temperature_C) AS max_temp, MIN(Temperature_C) AS min_temp
FROM weather
GROUP BY Location
ORDER BY max_temp DESC;
