USE stuslu;
SELECT nazMjesto
FROM mjesto
WHERE nazMjesto NOT RLIKE '^[AEIOU]' OR nazMjesto NOT RLIKE '[aeiou]$';