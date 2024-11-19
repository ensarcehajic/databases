USE stuslu;
SELECT oznDvorana, kapacitet FROM dvorana
WHERE kapacitet > (
SELECT COUNT(sifPred) FROM rezervacija WHERE oznDvorana = dvorana.oznDvorana);