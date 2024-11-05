USE stuslu;
SELECT imeNastavnik, prezNastavnik,nazOrgjed
FROM nastavnik INNER JOIN orgjed ON nastavnik.sifOrgjed = orgjed.sifOrgjed;