CREATE TABLE "temp" (
    "phrase" TEXT
);

INSERT INTO "temp" ("phrase")
VALUES
(SELECT SUBSTR("sentence", 98, 4) FROM "sentences"
WHERE "id" = 14),
(SELECT SUBSTR("sentence", 3, 5) FROM "sentences"
WHERE "id" = 114),
(SELECT SUBSTR("sentence", 72, 9) FROM "sentences"
WHERE "id" = 618),
(SELECT SUBSTR("sentence", 7, 3) FROM "sentences"
WHERE "id" = 630),
(SELECT SUBSTR("sentence", 12, 5) FROM "sentences"
WHERE "id" = 932),
(SELECT SUBSTR("sentence", 50, 7) FROM "sentences"
WHERE "id" = 2230),
(SELECT SUBSTR("sentence", 44, 10) FROM "sentences"
WHERE "id" = 2346),
(SELECT SUBSTR("sentence", 14, 5) FROM "sentences"
WHERE "id" = 3041;);

CREATE VIEW "message" AS
SELECT "phrase" FROM "temp";

