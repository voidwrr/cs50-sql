
-- *** The Lost Letter ***
SELECT * FROM "scans" WHERE "address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" LIKE '%finnegan%'
); -- Did this query searching by the address Anneke said

SELECT * FROM "packages" WHERE "contents" LIKE '%congratulatory%'; -- Search by the content of the package

SELECT * FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages" WHERE "contents" = 'Congratulatory letter'
); --Did this to know if it was already dropped

SELECT "address" FROM "addresses" WHERE "id" = (
    SELECT "to_address_id" FROM "packages" WHERE "contents" = 'Congratulatory letter'
    ); -- Did this to know where it was dropped

SELECT * FROM "addresses" WHERE "id" = (
    SELECT "to_address_id" FROM "packages" WHERE "contents" = 'Congratulatory letter'
); --Did this to know the type of address

-- *** The Devious Delivery ***

SELECT * FROM "packages" WHERE "from_address_id" IS NULL; --As he said there's no from I search for nulls

SELECT "type" FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE "package_id" = (
        SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
    ) AND "action" = 'Drop'
); --To know the type of address


-- *** The Forgotten Gift ***

SELECT * FROM "packages" WHERE "from_address_id" = (
    SELECT "to_address_id" FROM  "addresses" WHERE "address" = '109 Tileston Street'
); -- To discover the content of the package searching by the address that he said he sent

SELECT * FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages" WHERE "contents" = 'Flowers'
) -- To discover what happened to this package

SELECT "name" FROM "drivers" WHERE "id" = (
    SELECT "driver_id" FROM "scans" WHERE "package_id" = (
        SELECT "id" FROM "packages" WHERE "contents" = 'Flowers'
    ) AND "address_id" IS NOT (
        SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street'
    ) AND "action" = 'Pick'
); --In order to discover the name of the driver
