USE stuslu;
SELECT COUNT(upisanoStud)
FROM pred
WHERE brojSatiTjedno > 3 AND nazPred LIKE '%tehnike';