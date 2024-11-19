USE stuslu;
SELECT sifNastavnik, imeNastavnik, prezNastavnik, koef, nazMjesto
FROM nastavnik 
INNER JOIN mjesto ON nastavnik.pbrStan = mjesto.pbr
WHERE koef < (
    SELECT AVG(koef)
    FROM nastavnik AS ostaliNast
    INNER JOIN mjesto AS drugoMjes ON ostaliNast.pbrStan = drugoMjes.pbr
    WHERE mjesto.sifZupanija = drugoMjes.sifZupanija
    AND ostaliNast.sifNastavnik <> nastavnik.sifNastavnik
);
