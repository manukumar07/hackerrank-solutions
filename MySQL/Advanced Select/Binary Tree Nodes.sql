/*
Enter your query here.
*/
SELECT N,
CASE
    WHEN P IS NULL THEN 'Root'
    WHEN (SELECT COUNT(*) FROM BST WHERE B.N=P)>0
    THEN 'Inner'
    ELSE 'Leaf'
    END AS PALACE
    FROM BST B
    ORDER BY N;
    
