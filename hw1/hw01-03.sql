.open chicago-red-light-cameras.db


select sum(Num_Violations) from violations
where Camera_ID in (
select Camera_ID from Cameras
where Intersection like 'ROOSEVELT AND HALSTED') and Violation_Date like '%2020'

select sum(Num_Violations) from violations
where Camera_ID in (
select Camera_ID from Cameras
where Intersection like 'ROOSEVELT AND HALSTED') and Violation_Date like '%2023'