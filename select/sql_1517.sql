# Write your MySQL query statement below
select user_id, name, mail from users
WHERE mail REGEXP '^[a-zA-Z][a-zA-Z0-9._-]*@leetcode\\.com$';