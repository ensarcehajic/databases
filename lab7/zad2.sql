USE stuslu;
CREATE TEMPORARY TABLE nastTemp(
rbrNast SERIAL,
sifNastavnik INT NOT NULL,
imeNastavnik NCHAR(25) NOT NULL,
prezNastavnik NCHAR(25) NOT NULL,
pbrStan INTEGER NOT NULL,
sifOrgjed INTEGER NOT NULL,
koef DECIMAL(3,2) NOT NULL
);
INSERT INTO nastTemp SELECT 0, nastavnik.* FROM nastavnik;
SELECT * FROM nastTemp;