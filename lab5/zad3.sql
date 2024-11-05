USE stuslu;
SELECT nazZupanija 
FROM zupanija
WHERE sifZupanija NOT IN (SELECT sifZupanija FROM mjesto INNER JOIN stud ON pbrStan=pbr) AND sifZupanija IN
(SELECT sifZupanija FROM mjesto INNER JOIN stud ON pbrRod=pbr);