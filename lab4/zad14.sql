USE stuslu;
SELECT DISTINCT nazMjesto
FROM mjesto,stud
WHERE mjesto.pbr=stud.pbrRod AND mjesto.pbr=stud.pbrStan;