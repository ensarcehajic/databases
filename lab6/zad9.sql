USE stuslu;
SELECT pbr, nazMjesto, COUNT(*)
FROM mjesto INNER JOIN stud ON mjesto.pbr = stud.pbrStan
INNER JOIN ispit ON stud.mbrStud = ispit.mbrStud
WHERE ocjena > 1
GROUP BY 1,2
ORDER BY nazMjesto;