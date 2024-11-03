USE stuslu;
SELECT nazMjesto
FROM mjesto
WHERE nazMjesto RLIKE '^[AEIOU]' AND nazMjesto RLIKE '[aeiou]$' ;