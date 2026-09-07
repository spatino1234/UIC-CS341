.open chicago-red-light-cameras.db

select Camera_ID, Sum(Num_Violations) from Violations
GROUP BY Camera_ID
ORDER by Sum(Num_Violations) DESC
limit 1
