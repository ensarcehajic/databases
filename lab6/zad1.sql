USE stuslu;
SELECT kratPred,nazPred,AVG(ocjena)
FROM ispit INNER JOIN pred ON ispit.sifPred = pred.sifPred
WHERE ocjena > 1
GROUP BY  ispit.sifPred,1,2;