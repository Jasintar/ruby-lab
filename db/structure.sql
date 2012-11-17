CREATE TABLE "problems" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "prefix" varchar(255), "title" varchar(255), "body" text, "input" text, "output" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "state" varchar(255));
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20121113185342');

INSERT INTO schema_migrations (version) VALUES ('20121114070718');