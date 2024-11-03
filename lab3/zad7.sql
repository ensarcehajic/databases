USE stuslu;
SELECT *
FROM stud
WHERE DAY(datRodStud) <> SUBSTRING(jmbgStud,1,2) AND MONTH(datRodStud) <> SUBSTRING(jmbgStud,3,2)
AND YEAR(datRodStud)%1000 <> SUBSTRING(jmbgStud,5,2);