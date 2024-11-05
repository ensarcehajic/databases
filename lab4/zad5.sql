USE stuslu;
SELECT DISTINCT stud.*
FROM stud INNER JOIN ispit ON stud.mbrStud = ispit.mbrStud
INNER JOIN nastavnik ON ispit.sifNastavnik = nastavnik.sifNastavnik
INNER JOIN mjesto ON mjesto.pbr = nastavnik.pbrStan
INNER JOIN zupanija ON mjesto.sifZupanija = zupanija.sifZupanija
WHERE ocjena=1 AND nazZupanija = 'Osječko-baranjska';