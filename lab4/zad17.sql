USE stuslu;
SELECT DISTINCT nastavnik.*
FROM ispit INNER JOIN nastavnik ON ispit.sifNastavnik = nastavnik.sifNastavnik 
INNER JOIN stud ON ispit.mbrStud = stud.mbrStud
INNER JOIN mjesto mjestoStud ON stud.pbrStan = mjestoStud.pbr
INNER JOIN mjesto mjestoNas ON nastavnik.pbrStan = mjestoNas.pbr
WHERE mjestoStud.sifZupanija = mjestoNas.sifZupanija;