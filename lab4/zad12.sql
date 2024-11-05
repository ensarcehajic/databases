USE stuslu;
SELECT DISTINCT orgjed.nazOrgjed
FROM nastavnik INNER JOIN orgjed ON nastavnik.sifOrgjed = orgjed.sifOrgjed
