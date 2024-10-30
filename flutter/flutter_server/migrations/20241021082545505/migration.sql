BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "user" DROP COLUMN "imageUrl";
ALTER TABLE "user" ADD COLUMN "img" text;

--
-- MIGRATION VERSION FOR flutter
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('flutter', '20241021082545505', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241021082545505', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
