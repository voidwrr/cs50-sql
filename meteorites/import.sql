CREATE TABLE "meteorites_temp" (
    "name" TEXT,
    "id" INTEGER,
    "nametype" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT,
    "year" DATE TIME,
    "lat" NUMERIC,
    "long" NUMERIC
);

.import --csv --skip 1 meteorites.csv meteorites_temp

DELETE FROM "meteorites_temp"
WHERE "nametype" = 'Relict';

UPDATE "meteorites_temp"
SET "mass" = NULL
WHERE "mass" = '' OR "mass" = 0;

UPDATE "meteorites_temp"
SET "year" = NULL
WHERE "year" = '' OR "year" = 0;

UPDATE "meteorites_temp"
SET "lat" = NULL
WHERE "lat" = '' OR "lat" = 0;

UPDATE "meteorites_temp"
SET "long" = NULL
WHERE "long" = '' OR "long" = 0;

UPDATE "meteorites_temp"
SET "mass" = (
    SELECT ROUND("mass", 2) FROM "meteorites_temp"
);

UPDATE "meteorites_temp"
SET "lat" = (
    SELECT ROUND("lat", 2) FROM "meteorites_temp"
);

UPDATE "meteorites_temp"
SET "long" = (
    SELECT ROUND("ong", 2) FROM "meteorites_temp"
);

CREATE TABLE "meteorites" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "name" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT,
    "year" DATE TIME,
    "lat" NUMERIC,
    "long" NUMERIC
);

INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long" FROM "meteorites_temp"
ORDER BY "year" ASC, "name" ASC;

DROP TABLE "meteorites_temp";
