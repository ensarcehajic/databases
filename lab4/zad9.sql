USE stuslu;
SELECT COUNT(ocjena)
FROM ispit INNER JOIN nastavnik ON
nastavnik.sifNastavnik = ispit.sifNastavnik
INNER JOIN mjesto ON nastavnik.pbrStan=pbr
WHERE mjesto.nazMjesto LIKE 'Z%' AND ocjena=1;