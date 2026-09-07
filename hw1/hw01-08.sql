.open chicago-traffic-cameras.db

-- Find all red light cameras at the intersection of Damen Ave and Diversey Pkwy. List the
-- Camera ID and address of each one. Order the results by camera ID, from smallest to
-- largest.

select RedCameras.Camera_ID, RedCameras.Address
from RedCameras inner join Intersections on RedCameras.Intersection_ID = Intersections.Intersection_ID
where Intersections.intersection = 'DAMEN AVE AND DIVERSEY PKWY'
order by RedCameras.Camera_ID asc