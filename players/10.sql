SELECT CONCAT("first_name", "last_name") AS "Players_from_NY", "birth_city" FROM "players"
WHERE "birth_state" = 'NY'
ORDER BY "birth_city" ASC;
