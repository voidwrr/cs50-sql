SELECT "first_name", "last_name" FROM "players"
WHERE "id" IN (
    SELECT "players"."id" FROM "players"
    JOIN "salaries" ON "players"."id" = "salaries"."player_id"
    JOIN "performances" ON "players"."id" = "performances"."player_id"
        AND "salaries"."year" = "performances"."year"
        WHERE "performances"."year" = 2001 AND "rbi" > 0
    ORDER BY ("salary" /"rbi") ASC, "players"."id" ASC
    LIMIT 10
)
AND "id" IN (
     SELECT "players"."id" FROM "players"
    JOIN "salaries" ON "players"."id" = "salaries"."player_id"
    JOIN "performances" ON "players"."id" = "performances"."player_id"
        AND "salaries"."year" = "performances"."year"
        WHERE "performances"."year" = 2001 AND "h" > 0
    ORDER BY ("salary" /"h") ASC, "players"."id" ASC
    LIMIT 10
)
ORDER BY "id" ASC;
