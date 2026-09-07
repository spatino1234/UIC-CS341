.open chicago-red-light-cameras.db

-- Find the total number of violations on July 4th from 2014 to 2024, inclusive. Also retrieve
-- the date. The results should be in order by date, from the least recent to the most
-- recent.

-- WHERE order_date >= '2026-01-01' AND order_date < '2027-01-01';
select violation_date, sum(num_violations) from Violations
where violation_date like '07/04/%'
group by violation_date 
order by violation_date asc