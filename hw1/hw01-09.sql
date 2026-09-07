.open chicago-traffic-cameras.db
-- Find the number of red light violations recorded at the intersection of Cicero Ave and I55
-- each year. Order by year, from least recent to most recent

select substr(RedViolations.Violation_Date, 1, 4) as Year, sum(RedViolations.Num_Violations) as Num_Violations
from RedViolations inner join RedCameras on RedViolations.Camera_ID = RedCameras.Camera_ID
inner join Intersections on RedCameras.Intersection_ID = Intersections.Intersection_ID
where Intersections.intersection = 'CICERO AVE AND I55'
group by Year
order by Year asc