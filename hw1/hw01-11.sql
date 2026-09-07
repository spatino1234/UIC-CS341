.open chicago-traffic-cameras.db

-- Find the speed camera that recorded the greatest number of violations at the
-- intersection of Pulaski Rd and 55th St. List the ID of this camera, its address, and the
-- number of violations it has recorded.

select SpeedCameras.Camera_ID, SpeedCameras.Address, sum(SpeedViolations.Num_Violations) as Num_Violations
from SpeedCameras inner join SpeedViolations on SpeedCameras.Camera_ID = SpeedViolations.Camera_ID
inner join Intersections on SpeedCameras.Intersection_ID = Intersections.Intersection_ID
where Intersections.intersection = 'PULASKI RD AND 55TH ST'
group by SpeedCameras.Camera_ID, SpeedCameras.Address
order by Num_Violations desc
limit 1