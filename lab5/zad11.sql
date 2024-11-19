SELECT ispit.mbrstud, imestud, prezstud
FROM ispit INNER JOIN stud ON ispit.mbrstud = stud.mbrstud
WHERE ocjena > 1
AND NOT EXISTS (SELECT * FROM ispit ispitP
WHERE ispitP.sifNastavnik = ispit.sifNastavnik AND ocjena > 1
AND ispit.mbrStud <> ispitP.mbrStud);