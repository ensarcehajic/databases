USE stuslu;
SELECT mbrStud, imeStud, prezStud
FROM stud
WHERE NOT EXISTS 
(SELECT * FROM ispit WHERE stud.mbrStud = ispit.mbrStud
AND WEEKDAY(datRodStud)=WEEKDAY(datIspit))