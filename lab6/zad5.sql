USE stuslu;
SELECT stud.*, AVG(ocjena) AS prosjecnaOcjena
FROM stud INNER JOIN ispit ON stud.mbrStud = ispit.mbrStud
WHERE ocjena > 1
GROUP BY 1,2,3,4,5,6,7
HAVING AVG(ocjena)>3;