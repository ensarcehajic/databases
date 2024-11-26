USE stuslu;
SELECT B.siforgjed, B.nazorgjed, COUNT(*)
FROM orgjed INNER JOIN orgjed B ON orgjed.sifnadorgjed = B.siforgjed
GROUP BY 1, 2;