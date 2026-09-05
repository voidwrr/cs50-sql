SELECT "english_title" AS "The view with most contrast about storm", "contrast" FROM "views"
WHERE "english_title" LIKE "%storm%"
ORDER BY "contrast"
LIMIT 1;
