USE stuslu;
SELECT DISTINCT nad.sifOrgjed, nad.nazOrgjed
FROM orgjed nad
INNER JOIN orgjed pod ON pod.sifNadorgjed = nad.sifOrgjed
WHERE pod.nazOrgjed LIKE '%matem%';
