WITH challenge_counts AS (
    SELECT 
        h.hacker_id, 
        h.name, 
        COUNT(c.challenge_id) AS challenges_created
    FROM hackers h
    JOIN challenges c ON h.hacker_id = c.hacker_id
    GROUP BY h.hacker_id, h.name
),
count_frequencies AS (
    SELECT 
        cc.challenges_created, 
        COUNT(*) AS frequency
    FROM challenge_counts cc
    GROUP BY cc.challenges_created
)
SELECT 
    cc.hacker_id, 
    cc.name, 
    cc.challenges_created
FROM challenge_counts cc
WHERE 
    cc.challenges_created = (
        SELECT MAX(challenges_created) FROM challenge_counts
    )
    OR cc.challenges_created IN (
        SELECT cf.challenges_created
        FROM count_frequencies cf
        WHERE cf.frequency = 1
    )
ORDER BY 
    cc.challenges_created DESC, 
    cc.hacker_id;