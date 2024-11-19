USE stuslu;
SELECT sifNastavnik,imeNastavnik,prezNastavnik
FROM nastavnik INNER JOIN mjesto ON nastavnik.pbrStan = mjesto.pbr
INNER JOIN zupanija ON mjesto.sifZupanija = zupanija.sifZupanija
WHERE nazZupanija = "Dubrovačko-neretvanska"
AND koef > ANY (SELECT koef FROM nastavnik INNER JOIN mjesto 
ON nastavnik.pbrStan = mjesto.pbr
INNER JOIN zupanija ON mjesto.sifZupanija = zupanija.sifZupanija
WHERE nazZupanija = "Splitsko-dalmatinska");