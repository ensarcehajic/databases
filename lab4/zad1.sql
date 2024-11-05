USE stuslu;
SELECT CONCAT(SUBSTRING(imeStud,1,1),'.',SUBSTRING(prezStud,1,1),'.'), SUBSTRING(nazPred,1,25), datIspit
FROM stud INNER JOIN ispit ON stud.mbrStud = ispit.mbrStud 
INNER JOIN pred ON pred.sifPred = ispit.sifPred
WHERE ocjena=5;