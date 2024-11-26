USE stuslu;
SELECT imeStud, prezStud, COUNT(*)
FROM ispit INNER JOIN stud ON ispit.mbrStud =  stud.mbrStud
WHERE ocjena > 1
GROUP BY 1,2,ispit.mbrStud
ORDER BY 3 DESC,2,1;
