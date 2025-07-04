Top Competitors/*
Enter your query here.
*/
SELECT 
    H.hacker_id, 
    H.name
FROM submissions S
JOIN challenges C ON S.challenge_id = C.challenge_id
JOIN difficulty D ON C.difficulty_level = D.difficulty_level
JOIN hackers H ON S.hacker_id = H.hacker_id
WHERE S.score = D.score
GROUP BY H.hacker_id, H.name
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC, H.hacker_id ASC;
