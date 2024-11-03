USE stuslu;
SELECT AVG(DATEDIFF(curdate(),datRodStud)) as prosjecnaStarost
FROM stud
WHERE pbrRod = 10000 AND (imeStud RLIKE '^[AEIOU]' OR imeStud RLIKE '[aeiou]$');