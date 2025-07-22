SELECT c.company_code,
       c.founder,
       Count(DISTINCT e.lead_manager_code),
       Count(DISTINCT e.senior_manager_code),
       Count(DISTINCT e.manager_code),
       Count(DISTINCT e.employee_code)
FROM   company c (nolock)
       JOIN employee e (nolock)
         ON c.company_code = e.company_code
GROUP  BY c.company_code,
          c.founder
ORDER  BY c.company_code ASC; 