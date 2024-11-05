USE stuslu;
SELECT * FROM stud
WHERE mbrStud NOT IN (SELECT mbrStud FROM ispit WHERE ocjena = 1);