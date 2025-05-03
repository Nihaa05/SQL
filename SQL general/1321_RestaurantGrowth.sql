# Write your MySQL query statement below
WITH DaySum AS (
    SELECT 
        visited_on,
        SUM(amount) AS amount
    FROM CUSTOMER
    GROUP BY visited_on
)

SELECT 
    a.visited_on, 
    round(SUM(b.amount),2) as amount, 
    round(AVG(b.amount),2) as average_amount
FROM DaySum a, DaySum b 
WHERE DATEDIFF(a.visited_on, b.visited_on) between 0 and 6
group by visited_on
Having count(*) > 6
order by a.visited_on

-- select visited_on, 
-- (select sum(amount) from customer where visited_on between Date_sub(c.visited_on, interval 6 day)
-- and c.visited_on) as amount,
-- round((select sum(amount)/7 from customer where visited_on between date_sub(c.visited_on, interval 6 day) and c.visited_on),2) as average_amount
-- from customer c
-- where visited_on >= (
--     select date_add(min(visited_on),interval 6 day)
--     from customer
-- )
-- group by visited_on
-- order by visited_on
