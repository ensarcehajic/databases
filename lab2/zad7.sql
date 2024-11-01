USE stuslu;
SELECT imeStud, prezStud, CONCAT(SUBSTRING(imeStud,1,1),'.',SUBSTRING(prezStud,1,1),'.') AS inicijali
FROM stud;