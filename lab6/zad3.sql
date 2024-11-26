USE stuslu;
SELECT imeNastavnik, COUNT(ocjena)
FROM nastavnik INNER JOIN ispit ON
nastavnik.sifNastavnik = ispit.sifNastavnik
WHERE ocjena > 1
GROUP BY nastavnik.sifNastavnik,1;