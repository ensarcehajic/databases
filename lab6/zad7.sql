USE stuslu;
SELECT ispit.mbrstud, prezstud,
CONCAT(SUBSTRING(prezstud,1,1),'.',SUBSTRING(imestud,1,1),'.')
FROM stud INNER JOIN ispit ON ispit.mbrstud = stud.mbrstud
WHERE ocjena = 1
GROUP BY 1, 2, 3, sifpred
HAVING COUNT(*) > 2;