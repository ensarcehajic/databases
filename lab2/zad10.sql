USE stuslu;
SELECT mbrStud, ocjena, datIspit, CURDATE() AS danasnjiDat, DATEDIFF(CURDATE(), datIspit)
FROM ispit;