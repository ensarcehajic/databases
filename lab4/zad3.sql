USE stuslu;
SELECT nazPred, kratPred
FROM pred INNER JOIN orgjed pod
ON pred.sifOrgjed = pod.sifOrgjed
INNER JOIN orgjed nad ON pod.sifNadorgjed = nad.sifOrgjed
WHERE nad.nazOrgjed LIKE '%tehnike%';