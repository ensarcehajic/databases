USE stuslu;
SELECT imeStud, prezStud, mjestoRod.nazMjesto, mjestoStan.nazMjesto
FROM stud INNER JOIN ispit ON stud.mbrStud = ispit.mbrStud 
INNER JOIN pred ON ispit.sifPred = pred.sifPred
INNER JOIN mjesto mjestoRod ON stud.pbrRod = mjestoRod.pbr 
INNER JOIN mjesto mjestoStan ON stud.pbrStan = mjestoStan.pbr
WHERE nazPred = "Elektronički sklopovi" AND ocjena > 1;