USE stuslu;
SELECT imeStud, prezStud, datRodStud
FROM stud
WHERE DATE_ADD(datRodStud, INTERVAL 200 DAY) <= (SELECT MAX(datRodStud) FROM stud);