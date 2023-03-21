select Candidate, Office_Sought, Election_Year, FORMAT(sum(Total_$),2) from combined_party_data
where Office_Sought = 'PRESIDENT / VICE PRESIDENT'
group by Candidate, Office_Sought, Election_Year
having Election_Year = 2016 and sum(Total_$) between 3000000 and 18000000
order by sum(Total_$) desc;
