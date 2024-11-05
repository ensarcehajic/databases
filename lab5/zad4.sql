USE stuslu;
SELECT sifNastavnik, imeNastavnik, prezNastavnik
FROM nastavnik
WHERE sifNastavnik IN (
    SELECT sifNastavnik 
    FROM ispit 
    WHERE ocjena = 1 AND YEAR(datIspit) = YEAR(CURDATE()) AND MONTH(datIspit) IN (1,2)
);
