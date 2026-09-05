SELECT "first_name", "last_name" FROM "players"
WHERE "birth_country" IS NOT 'US'
ORDER BY "first_name", "last_name";
