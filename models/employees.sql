WITH calc_employees AS (
SELECT 
date_part(year, current_date) - date_part(year, birth_date) AS age,
date_part(year, current_date) - date_part(year, hire_date) AS lengthofservice,
first_name || ' ' || last_name AS name, *


FROM {{source('sources', 'employees')}}
)

SELECT * FROM calc_employees