.open chicago-traffic-cameras.db

-- Find the 5 years that had the least number of violations for the speed camera at 2928 S
-- HALSTED. List the year and the total number of violations that were recorded at 2928 S
-- HALSTED in that year.
-- The name of the file for this exercise should be "hw01-07.sql" and it should be done in a
-- single SQL SELECT query. You must use JOIN, i.e. the use of SELECT in SELECT is
-- not allowed.


select substr(SpeedViolations.Violation_Date, 1, 4) as Year, sum(SpeedViolations.Num_Violations) as Num_Violations
from SpeedCameras inner join SpeedViolations on SpeedCameras.Camera_ID = SpeedViolations.Camera_ID
where SpeedCameras.Address like '%2928 S HALSTED%'
group by Year
order by Num_Violations asc
limit 5