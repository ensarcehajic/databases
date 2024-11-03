USE stuslu;
SELECT COUNT(ocjena) , AVG(ocjena)
FROM ispit
WHERE ocjena > 1 AND sifPred = 146;