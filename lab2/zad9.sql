USE stuslu;
SELECT * 
FROM ispit
WHERE WEEKDAY(datIspit) = 2 AND MONTH(datIspit) = 8;