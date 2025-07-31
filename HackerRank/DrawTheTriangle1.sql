WITH RECURSIVE numbers AS (
  SELECT 20 AS i
  UNION ALL
  SELECT i - 1 FROM numbers WHERE i > 1
)
SELECT REPEAT('* ', i) AS stars
FROM numbers;