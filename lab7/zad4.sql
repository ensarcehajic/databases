UPDATE nastT SET koef = koef*0.9
WHERE sifNastavnik IN (
SELECT sifNastavnik FROM ispit WHERE ocjena>1
GROUP BY 1
HAVING AVG(ocjena)<2.2)
OR sifNastavnik IN (
SELECT sifNastavnik FROM ispit WHERE ocjena =1
GROUP BY 1
HAVING COUNT(*)>8
);


