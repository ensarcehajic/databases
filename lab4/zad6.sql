USE stuslu;
SELECT SUM(pred.upisanostud) AS brojStud
FROM orgjed pod 
INNER JOIN orgjed nad ON pod.sifNadorgjed = nad.sifOrgjed
INNER JOIN pred ON pred.sifOrgjed = pod.sifOrgjed
WHERE nad.nazOrgjed = 'Fakultet elektrotehnike i računarstva';
