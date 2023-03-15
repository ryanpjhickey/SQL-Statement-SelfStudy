use fcc_sql_guides_database

select studentID, FullName, sat_score, recordUpdated
from student
where
  (
    studentID between 1 and 5
    or studentID = 8
    or FullName like '%Maximo%'
  )
and sat_score NOT in (1000, 1400);

/*get student info for students between id 1-5, id 8 itself, or FullName contains Maximo, only if SAT score is not between 1000-1400 */

order by FullName DESC;

/* order alphabetically by name */

