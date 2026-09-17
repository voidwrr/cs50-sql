CREATE VIEW "frequently_reviewed" AS
SELECT "id", "property_type", "host_name", COUNT("comments") AS "reviews"
FROM "listings"
JOIN "reviews" ON "listings"."id" = "reviews"."listing_id"
GROUP BY "listing_id"
ORDER BY "reviews" DESC, "host_name" ASC
LIMIT 100;
