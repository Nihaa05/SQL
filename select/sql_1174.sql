/*https://leetcode.com/problems/article-views-i/?envType=study-plan-v2&envId=top-sql-50*/
select 
round(avg(if(min_order_date = min_customer_pref_delivery_date,1,0))*100,2) as immediate_percentage
from (select min(order_date) as min_order_date,
min(customer_pref_delivery_date) as min_customer_pref_delivery_date
from delivery
group by customer_id ) as immediate_delivery