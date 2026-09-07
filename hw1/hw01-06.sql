.open chicago-traffic-cameras.db

-- Find the 10 red light cameras that recorded the most violations. List the camera ID, the
-- address at which the camera is located, and the number of violations.


SELECT RedCameras.Camera_ID, RedCameras.Address, SUM(RedViolations.Num_Violations) AS Num_Violations
FROM RedCameras
INNER JOIN RedViolations ON RedCameras.Camera_ID = RedViolations.Camera_ID
GROUP BY RedCameras.Camera_ID, RedCameras.Address
ORDER BY Num_Violations DESC
LIMIT 10;