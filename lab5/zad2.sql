USE stuslu;
SELECT nazMjesto
FROM mjesto 
WHERE pbr IN (SELECT pbrStan FROM nastavnik) AND pbr NOT IN (SELECT pbrStan FROM stud);