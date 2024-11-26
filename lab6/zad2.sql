USE stuslu;
SELECT mjesto.sifZupanija, COUNT(ocjena)
FROM ispit INNER JOIN nastavnik ON ispit.sifNastavnik = nastavnik.sifNastavnik
INNER JOIN mjesto ON nastavnik.pbrStan = mjesto.pbr
WHERE ocjena=1
GROUP BY sifZupanija;