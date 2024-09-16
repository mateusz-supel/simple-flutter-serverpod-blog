BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "candidate" (
    "id" bigserial PRIMARY KEY,
    "details" json NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "candidate_details" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "surname" text NOT NULL,
    "location" text NOT NULL,
    "phoneNumber" json NOT NULL,
    "email" text NOT NULL,
    "linkedInUrl" text NOT NULL
);


--
-- MIGRATION VERSION FOR flutter
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('flutter', '20240915095452591', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240915095452591', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
