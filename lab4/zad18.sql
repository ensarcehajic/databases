USE stuslu;
SELECT stud1.imeStud, stud1.prezStud, stud2.imeStud, stud2.prezStud
FROM stud stud1, stud stud2
WHERE stud1.imeStud LIKE 'K%' and stud1.prezStud LIKE 'K%'
AND stud2.imeStud LIKE 'K%' and stud2.prezStud LIKE 'K%'
AND stud1.mbrstud <> stud2.mbrstud;