USE stuslu;
SELECT COUNT(mbrStud) AS brojStud, AVG(ocjena) as prosjOcjena
FROM ispit
WHERE WEEKDAY(datIspit) = 4 AND MONTH(datIspit) = 7 AND YEAR(datIspit) < YEAR(curdate())+5;