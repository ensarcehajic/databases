USE stuslu;
SELECT sifNastavnik, mbrStud, ocjena, DATEDIFF('2009-01-01',datIspit)
FROM ispit;