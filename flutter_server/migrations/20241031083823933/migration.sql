BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "candidate_details" CASCADE;

--
-- ACTION DROP TABLE
--
DROP TABLE "candidate" CASCADE;


--
-- MIGRATION VERSION FOR flutter
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('flutter', '20241031083823933', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241031083823933', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
