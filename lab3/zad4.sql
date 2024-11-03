USE stuslu;
SELECT nazMjesto
FROM mjesto
WHERE (nazMjesto LIKE 'A%' OR nazMjesto LIKE 'E%' OR nazMjesto LIKE 'I%' OR nazMjesto LIKE 'O%' 
OR nazMjesto LIKE 'U%') AND (nazMjesto LIKE '%a' OR nazMjesto LIKE '%e' OR nazMjesto LIKE '%i' OR nazMjesto LIKE '%o' 
OR nazMjesto LIKE '%u');