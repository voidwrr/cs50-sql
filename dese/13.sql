SELECT "schools"."name", "graduation_rates"."dropped"
FROM "schools"
JOIN "graduation_rates" ON "schools"."id" = "graduation_rates"."school_id"
WHERE "state" = 'MA'
    AND "graduation_rates"."dropped" > (
        SELECT AVG("dropped") FROM "graduation_rates"
    )
ORDER BY "graduation_rates"."dropped" DESC;
