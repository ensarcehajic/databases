USE stuslu;
SELECT COUNT(DISTINCT pred.sifPred)
FROM pred INNER JOIN rezervacija ON pred.sifPred = rezervacija.sifPred
INNER JOIN dvorana ON dvorana.oznDvorana = rezervacija.oznDvorana
WHERE kapacitet<=60; 