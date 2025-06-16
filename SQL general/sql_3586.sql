# Write your MySQL query statement below
select p.patient_id, p.patient_name, p.age, datediff(min(neg.test_date),min(pos.test_date)) as recovery_time 
from patients p
join covid_tests pos on
p.patient_id = pos.patient_id and pos.result = 'Positive'
join covid_tests neg on 
p.patient_id = neg.patient_id and neg.result = 'Negative'
where neg.test_date > pos.test_date
group by p.patient_id, p.patient_name, p.age
order by recovery_time, p.patient_name

