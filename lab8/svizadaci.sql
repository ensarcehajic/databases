START TRANSACTION;
SET autocommit=0;
ALTER TABLE nastavnik MODIFY sifOrgjed INTEGER;
ALTER TABLE nastavnik MODIFY pbrStan INTEGER;
ALTER TABLE nastavnik ADD CONSTRAINT FOREIGN KEY (sifOrgjed) REFERENCES orgjd(sifOrgjed);
ALTER TABLE nastavnik ADD CONSTRAINT FOREIGN KEY (pbrStan) REFERENCES mjesto(pbr);

START TRANSACTION;

# Zadatak 1
UPDATE nastavnik SET sifOrgjed = NULL
WHERE sifOrgjed IN (SELECT sifOrgjed FROM orgjed WHERE nazOrgjed = 'Zavod za primijenjenu fiziku');
UPDATE pred SET sifOrgjed = NULL
WHERE sifOrgjed IN (SELECT sifOrgjed FROM orgjed WHERE nazOrgjed = 'Zavod za primijenjenu fiziku');
CREATE TEMPORARY TABLE orgjedTmp AS SELECT * FROM orgjed;
UPDATE orgjed SET sifNadOrgjed = NULL
WHERE sifNadorgjed IN (SELECT sifOrgjed FROM orgjedTemp WHERE nazOrgjed = 'ZZavod za primijenjenu fiziku');

DELETE FROM orgjed WHERE nazOrgjed = 'Zavod za primijenjenu fiziku';

# Zadatak 2
UPDATE nastavnik SET pbrStan = NULL
WHERE imeNastavnik LIKE 'D%' AND prezNastavnik LIKE 'J%'; 

# Zadatak 3
SELECT COUNT(*) FROM nastavnik
WHERE pbrStan IS NULL OR sifOrgjed IS NULL;


# Zadatak 4
SELECT COUNT(*) FROM pred WHERE sifOrgjed = 100002;
SELECT COUNT(*) FROM pred WHERE sifOrgjed <> 100002;
SELECT COUNT(*) FROM pred;
 
 # Zadatak 5
 SELECT * FROM pred
 WHERE sifOrgjed IS NULL;
 
 # Zadatak 6
 SELECT COUNT(DISTINCT sifOrgjed)
 FROM nastavnik;
 
 # Zadatak 7
 SELECT DISTINCT brojSatiTjedno, sifOrgjed, COUNT(sifPred)
 FROM pred
 GROUP BY 1,2;
 
 # Zadatak 8
 SELECT * FROM stud
 WHERE pbrStan NOT IN (SELECT DISTINCT pbrRod FROM stud WHERE pbrRod IS NOT NULL);
 
 # Zadatak 9
SELECT sifNastavnik, imeNastavnik, prezimeNastavnik, nastavnik.sifOrgjed,
       IF(nastavnik.sifOrgjed IS NULL, 'NULL', nazOrgjed) AS nazorgjed
FROM nastavnik LEFT OUTER JOIN orgjed ON nastavnik.sifOrgjed = orgjed.sifOrgjed;

# Zadatak 10
SELECT sifNastavnik, imeNastavnik, prezNastavnik, o.sifOrgjed, o.nazOrgjed, n.nazOrgjed 
FROM nastavnik LEFT OUTER JOIN (orgjed o INNER JOIN orgjed n ON o.sifNadorgjed = n.siforgjed)
ON nastavnik.sifOrgjed = o.sifOrgjed;

# Zadatak 11
SELECT sifNastavnik, prezNastavnik, imeNastavnik, pbrstan, nazMjesto, nastavnik.sifOrgjed, nazOrgjed
FROM nastavnik LEFT OUTER JOIN mjesto ON nastavnik.pbrStan = mjesto.pbr
LEFT OUTER JOIN orgjed ON nastavnik.sifOrgjed = orgjed.sifOrgjed
ORDER BY 5,2;

# Zadataka 12
SELECT sifNastavnik, prezNastavnik, imeNastavnik, pbrStan, nazMjesto, nazZupanija
FROM nastavnik LEFT OUTER JOIN (mjesto INNER JOIN zupanija  ON mjesto.sifZupanija = zupanija.sifZupanija)
ON pbrStan = mjesto.pbr;

# Zadataka 13
SELECT kratPred, nazPred, pred.sifOrgjed, nazOrgjed
FROM pred LEFT OUTER JOIN orgjed ON pred.sifOrgjed = orgjed.sifOrgjed
WHERE SUBSTRING(nazPred1,1)='F';


ROLLBACK WORK;