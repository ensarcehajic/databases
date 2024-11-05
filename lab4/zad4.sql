USE stuslu;
SELECT DISTINCT nazOrgjed
FROM orgjed INNER JOIN pred ON
orgjed.sifOrgjed=pred.sifOrgjed
INNER JOIN ispit ON ispit.sifPred = pred.sifPred
INNER JOIN nastavnik ON nastavnik.sifNastavnik = ispit.sifNastavnik
INNER JOIN mjesto ON nastavnik.pbrStan = mjesto.pbr
INNER JOIN zupanija ON zupanija.sifZupanija = mjesto.sifZupanija
WHERE nazZupanija = "Dubrovačko-neretvanska" AND YEAR(datIspit) = 2000 AND MONTH(datIspit) = 4;