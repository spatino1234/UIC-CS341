.open chicago-red-light-cameras.db

select Camera_ID, intersection, address from Cameras
where intersection like '%Roosevelt%'
order by Camera_ID asc