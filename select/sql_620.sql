# Write your MySQL query statement below
select * from cinema
where description not like '%boring' and id%2 =1
order by rating desc
