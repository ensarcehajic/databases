USE stuslu;
SELECT dvorana.oznDvorana, dvorana.kapacitet
FROM dvorana INNER JOIN rezervacija ON dvorana.oznDvorana = rezervacija.oznDvorana
INNER JOIN pred ON pred.sifPred = rezervacija.sifPred
WHERE nazPred = "Energetska elektronika-izabrana poglavlja" AND oznVrstaDan IN ('PO','SR', 'PE');