BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "post" DROP COLUMN "img";
ALTER TABLE "post" ADD COLUMN "headerImg" text;
ALTER TABLE "post" ADD COLUMN "contentImg" text;

--
-- MIGRATION VERSION FOR flutter
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('flutter', '20241114090608475', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241114090608475', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
