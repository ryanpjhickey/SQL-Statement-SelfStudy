use fcc_sql_guides_database

select Candidate, Election_year, sum(Total_$), count(*)
from combined_party_data
where Election_year = 2016
group by Candidate, Election_year
having count(*) > 80
order by count(*) DESC;

/* This SQL statement answers the question: “which candidates recieved the largest number of contributions 
(not $ amount, but count (*)) in 2016, but only those who had more than 80 contributions?” */
