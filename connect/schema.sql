CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL UNIQUE,
    "password" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "schools" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "location" TEXT,
    "year_foundation" NUMERIC,
    PRIMARY KEY("id")
);

CREATE TABLE "companies" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "people_connect" (
    "user_id" INTEGER,
    "follow" INTEGER,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("follow") REFERENCES "users"("id")
);

CREATE TABLE "school_connect" (
    "user_id" INTEGER,
    "school_id" INTEGER,
    "start_datetime" NUMERIC NOT NULL,
    "end_datetime" NUMERIC,
    "degree_type" TEXT,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("school_id") REFERENCES "school"("id")
);

CREATE TABLE "company_connect" (
    "user_id" INTEGER,
    "company_id" INTEGER,
    "start_datetime" NUMERIC NOT NULL,
    "end_datetime" NUMERIC,
    "job_title" TEXT,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("company_id") REFERENCES "companies"("id")
);
