USE stuslu;
UPDATE pred SET brojSatiTjedno = brojSatiTjedno+1
WHERE brojSatiTjedno BETWEEN 1 AND 4 
AND sifPred IN (
SELECT sifPred 
FROM pred
WHERE datIspit >= DATE_ADD(CURDATE(), INTERVAL -15 YEAR)
AND ocjena = 1
GROUP BY sifPred
HAVING COUNT(*)>10); 
