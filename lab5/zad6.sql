USE stuslu;
SELECT *
FROM pred
WHERE sifOrgjed IN (SELECT sifOrgjed FROM nastavnik WHERE prezNastavnik LIKE 'O%')