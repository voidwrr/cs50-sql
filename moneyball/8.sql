SELECT "salary" FROM "salaries"
JOIN "performances" ON "salaries"."player_id" = "performances"."player_id"
    AND "performances"."year" = "salaries"."year"
WHERE "performances"."year" = 2001
ORDER BY "hr" DESC
LIMIT 1;
