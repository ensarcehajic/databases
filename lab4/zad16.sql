USE stuslu;
SELECT stud.*
FROM stud INNER JOIN mjesto mjestoStan ON stud.pbrStan = mjestoStan.pbr
INNER JOIN mjesto mjestoRod ON stud.pbrRod = mjestoRod.pbr
WHERE mjestoStan.sifZupanija = mjestoRod.sifZupanija AND mjestoRod.pbr <> mjestoStan.pbr;