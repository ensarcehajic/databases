USE stuslu;
SELECT pbr, nazMjesto,COUNT(*)
FROM stud INNER JOIN mjesto ON stud.pbrRod = mjesto.pbr
GROUP BY 1,2
HAVING COUNT(mbrstud) > 5
