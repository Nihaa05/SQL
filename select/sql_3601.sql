# Write your MySQL query statement below
with A as(
    select driver_id, avg(distance_km/fuel_consumed) as first_half_avg
    from trips
    where month(trip_date)<7
    group by driver_id
),
B as(
    select driver_id, avg(distance_km/fuel_consumed) as second_half_avg
    from trips
    where month(trip_date)>6
    group by driver_id
)
select A.driver_id, driver_name, round(first_half_avg,2) as first_half_avg,
round(second_half_avg,2) as second_half_avg,
round((second_half_avg - first_half_avg),2) as efficiency_improvement
from A,B,drivers
where A.driver_id = B.driver_id
and A.driver_id = drivers.driver_id
and A.first_half_avg < B.second_half_avg
order by efficiency_improvement desc, driver_name
