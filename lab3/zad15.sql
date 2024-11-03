USE stuslu;
SELECT COUNT(DISTINCT sifPred)
FROM rezervacija
WHERE oznDvorana LIKE 'B%' AND (oznVrstaDan IN ('UT','SR'))