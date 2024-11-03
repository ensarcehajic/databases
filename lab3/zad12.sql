USE stuslu;
SELECT AVG(ocjena)
FROM ispit
WHERE YEAR(datIspit) = 1999 AND ocjena > 1;