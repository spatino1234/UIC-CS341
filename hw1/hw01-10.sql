.open chicago-traffic-cameras.db

-- Find the number of speed cameras at each intersection. List the ID of the intersection,
-- the name of the intersection and the number of speed cameras at that intersection.
-- Order by the number of speed cameras, from greatest to least. If two intersections have
-- the same number of speed cameras, they should be in order by intersection ID, from
-- smallest to largest.

select Intersections.Intersection_ID, Intersections.intersection, count(SpeedCameras.Camera_ID) as Num_Speed_Cameras
from SpeedCameras inner join Intersections on SpeedCameras.Intersection_ID = Intersections.Intersection_ID
group by Intersections.Intersection_ID, Intersections.intersection
order by Num_Speed_Cameras desc, Intersections.Intersection_ID asc