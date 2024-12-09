USE stuslu;
UPDATE pred SET brojSatiTjedno = brojSatiTjedno-1
WHERE sifPred IN (
SELECT sifPred
FROM ispit
WHERE ocjena = 5
GROUP BY sifPred
HAVING COUNT(*)>= ALL
(
SELECT sifPred
FROM ispit
WHERE ocjena = 5
GROUP BY sifPred
));