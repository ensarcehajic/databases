USE stuslu;
SELECT * 
FROM stud
WHERE (datRodStud BETWEEN '1982-05-01' AND '1982-09-01' ) AND (prezStud LIKE 'R%'OR prezStud LIKE 'P%'OR
prezStud LIKE 's%'OR prezStud LIKE 'V%')