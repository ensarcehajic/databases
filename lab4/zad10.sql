USE stuslu;
SELECT COUNT(DISTINCT ispit.sifNastavnik)
FROM ispit INNER JOIN nastavnik ON ispit.sifNastavnik = nastavnik.sifNastavnik
INNER JOIN orgjed ON nastavnik.sifOrgjed = orgjed.sifOrgjed
WHERE nazOrgjed = "Zavod za primijenjenu matematiku";

