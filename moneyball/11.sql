SELECT "first_name","last_name", "salary" / "h" AS "dollars per hit" FROM "players"
JOIN "salaries" ON "players"."id" = "salaries"."player_id"
JOIN "performances" ON "players"."id" = "performances"."player_id"
    AND "salaries"."year" = "performances"."year"
WHERE "performances"."year" = 2001
    AND "h" > 0
GROUP BY "players"."id"
ORDER BY "dollars per hit" ASC, "first_name" ASC, "last_name" ASC
LIMIT 10;
