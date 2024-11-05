USE stuslu;
SELECT imeStud, prezStud, mjestoRod.nazMjesto AS mjestoRodjenja, mjestoStan.nazMjesto AS mjestoStanovanja, nazZupanija
FROM stud INNER JOIN mjesto mjestoRod ON stud.pbrRod = mjestoRod.pbr
INNER JOIN mjesto mjestoStan ON stud.pbrStan = mjestoStan.pbr
INNER JOIN zupanija ON mjestoRod.sifZupanija = zupanija.sifZupanija
