/*https://leetcode.com/problems/article-views-i/?envType=study-plan-v2&envId=top-sql-50*/
# Write your MySQL query statement below
select x,y,z,case when x+y>z and y+z>x and x+z>y then 'Yes'
else 'No'
end as Triangle
from Triangle