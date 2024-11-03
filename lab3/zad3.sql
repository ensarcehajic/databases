USE stuslu;
SELECT * 
FROM stud
WHERE (datRodStud BETWEEN '1982-05-01' AND '1982-09-01') AND (prezStud RLIKE '^[RVSP]');