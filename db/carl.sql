/*
 Navicat Premium Data Transfer

 Source Server         : localhost 2
 Source Server Type    : PostgreSQL
 Source Server Version : 90305
 Source Host           : localhost
 Source Database       : carl
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90305
 File Encoding         : utf-8

 Date: 08/10/2015 17:07:37 PM
*/

-- ----------------------------
--  Sequence structure for "auth_group_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "auth_group_id_seq";
CREATE SEQUENCE "auth_group_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "auth_group_id_seq" OWNER TO "sts";

-- ----------------------------
--  Sequence structure for "auth_group_permissions_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "auth_group_permissions_id_seq";
CREATE SEQUENCE "auth_group_permissions_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "auth_group_permissions_id_seq" OWNER TO "sts";

-- ----------------------------
--  Sequence structure for "auth_permission_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "auth_permission_id_seq";
CREATE SEQUENCE "auth_permission_id_seq" INCREMENT 1 START 30 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "auth_permission_id_seq" OWNER TO "sts";

-- ----------------------------
--  Sequence structure for "auth_user_groups_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "auth_user_groups_id_seq";
CREATE SEQUENCE "auth_user_groups_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "auth_user_groups_id_seq" OWNER TO "sts";

-- ----------------------------
--  Sequence structure for "auth_user_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "auth_user_id_seq";
CREATE SEQUENCE "auth_user_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "auth_user_id_seq" OWNER TO "sts";

-- ----------------------------
--  Sequence structure for "auth_user_user_permissions_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "auth_user_user_permissions_id_seq";
CREATE SEQUENCE "auth_user_user_permissions_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "auth_user_user_permissions_id_seq" OWNER TO "sts";

-- ----------------------------
--  Sequence structure for "carl_bucketlistitem_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "carl_bucketlistitem_id_seq";
CREATE SEQUENCE "carl_bucketlistitem_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "carl_bucketlistitem_id_seq" OWNER TO "sts";

-- ----------------------------
--  Sequence structure for "carl_photo_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "carl_photo_id_seq";
CREATE SEQUENCE "carl_photo_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "carl_photo_id_seq" OWNER TO "sts";

-- ----------------------------
--  Sequence structure for "carl_story_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "carl_story_id_seq";
CREATE SEQUENCE "carl_story_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "carl_story_id_seq" OWNER TO "sts";

-- ----------------------------
--  Sequence structure for "carl_video_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "carl_video_id_seq";
CREATE SEQUENCE "carl_video_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "carl_video_id_seq" OWNER TO "sts";

-- ----------------------------
--  Sequence structure for "django_admin_log_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "django_admin_log_id_seq";
CREATE SEQUENCE "django_admin_log_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "django_admin_log_id_seq" OWNER TO "sts";

-- ----------------------------
--  Sequence structure for "django_content_type_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "django_content_type_id_seq";
CREATE SEQUENCE "django_content_type_id_seq" INCREMENT 1 START 10 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "django_content_type_id_seq" OWNER TO "sts";

-- ----------------------------
--  Sequence structure for "django_migrations_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "django_migrations_id_seq";
CREATE SEQUENCE "django_migrations_id_seq" INCREMENT 1 START 15 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "django_migrations_id_seq" OWNER TO "sts";

-- ----------------------------
--  Table structure for "carl_bucketlistitem"
-- ----------------------------
DROP TABLE IF EXISTS "carl_bucketlistitem";
CREATE TABLE "carl_bucketlistitem" (
	"id" int4 NOT NULL DEFAULT nextval('carl_bucketlistitem_id_seq'::regclass),
	"hero_image" varchar(100) NOT NULL,
	"title" varchar(200) NOT NULL,
	"description" text NOT NULL,
	"location" varchar(200) NOT NULL,
	"venue" varchar(200) NOT NULL,
	"link" varchar(200) NOT NULL,
	"completed" bool NOT NULL,
	"date_added" date NOT NULL,
	"date_completed" date NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "carl_bucketlistitem" OWNER TO "sts";

-- ----------------------------
--  Table structure for "django_migrations"
-- ----------------------------
DROP TABLE IF EXISTS "django_migrations";
CREATE TABLE "django_migrations" (
	"id" int4 NOT NULL DEFAULT nextval('django_migrations_id_seq'::regclass),
	"app" varchar(255) NOT NULL,
	"name" varchar(255) NOT NULL,
	"applied" timestamp(6) WITH TIME ZONE NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "django_migrations" OWNER TO "sts";

-- ----------------------------
--  Records of "django_migrations"
-- ----------------------------
BEGIN;
INSERT INTO "django_migrations" VALUES ('1', 'contenttypes', '0001_initial', '2015-08-10 15:54:38.38877-06');
INSERT INTO "django_migrations" VALUES ('2', 'auth', '0001_initial', '2015-08-10 15:54:38.471979-06');
INSERT INTO "django_migrations" VALUES ('3', 'admin', '0001_initial', '2015-08-10 15:54:38.501093-06');
INSERT INTO "django_migrations" VALUES ('4', 'contenttypes', '0002_remove_content_type_name', '2015-08-10 15:54:38.549483-06');
INSERT INTO "django_migrations" VALUES ('5', 'auth', '0002_alter_permission_name_max_length', '2015-08-10 15:54:38.564066-06');
INSERT INTO "django_migrations" VALUES ('6', 'auth', '0003_alter_user_email_max_length', '2015-08-10 15:54:38.584148-06');
INSERT INTO "django_migrations" VALUES ('7', 'auth', '0004_alter_user_username_opts', '2015-08-10 15:54:38.598575-06');
INSERT INTO "django_migrations" VALUES ('8', 'auth', '0005_alter_user_last_login_null', '2015-08-10 15:54:38.61412-06');
INSERT INTO "django_migrations" VALUES ('9', 'auth', '0006_require_contenttypes_0002', '2015-08-10 15:54:38.616908-06');
INSERT INTO "django_migrations" VALUES ('10', 'sessions', '0001_initial', '2015-08-10 15:54:38.62819-06');
INSERT INTO "django_migrations" VALUES ('11', 'carl', '0001_initial', '2015-08-10 16:22:08.875105-06');
INSERT INTO "django_migrations" VALUES ('12', 'carl', '0002_video', '2015-08-10 16:29:02.658948-06');
INSERT INTO "django_migrations" VALUES ('13', 'carl', '0003_story', '2015-08-10 16:44:47.599047-06');
INSERT INTO "django_migrations" VALUES ('14', 'carl', '0004_auto_20150810_1646', '2015-08-10 16:46:55.439881-06');
INSERT INTO "django_migrations" VALUES ('15', 'carl', '0005_photo', '2015-08-10 16:53:04.86333-06');
COMMIT;

-- ----------------------------
--  Table structure for "carl_video"
-- ----------------------------
DROP TABLE IF EXISTS "carl_video";
CREATE TABLE "carl_video" (
	"id" int4 NOT NULL DEFAULT nextval('carl_video_id_seq'::regclass),
	"title" varchar(200) NOT NULL,
	"description" text NOT NULL,
	"video_url" varchar(200) NOT NULL,
	"date_added" date NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "carl_video" OWNER TO "sts";

-- ----------------------------
--  Table structure for "carl_photo"
-- ----------------------------
DROP TABLE IF EXISTS "carl_photo";
CREATE TABLE "carl_photo" (
	"id" int4 NOT NULL DEFAULT nextval('carl_photo_id_seq'::regclass),
	"title" varchar(200) NOT NULL,
	"caption" varchar(200) NOT NULL,
	"image_url" varchar(100) NOT NULL,
	"date_added" date NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "carl_photo" OWNER TO "sts";

-- ----------------------------
--  Table structure for "auth_group_permissions"
-- ----------------------------
DROP TABLE IF EXISTS "auth_group_permissions";
CREATE TABLE "auth_group_permissions" (
	"id" int4 NOT NULL DEFAULT nextval('auth_group_permissions_id_seq'::regclass),
	"group_id" int4 NOT NULL,
	"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "auth_group_permissions" OWNER TO "sts";

-- ----------------------------
--  Table structure for "carl_story"
-- ----------------------------
DROP TABLE IF EXISTS "carl_story";
CREATE TABLE "carl_story" (
	"id" int4 NOT NULL DEFAULT nextval('carl_story_id_seq'::regclass),
	"submitter" varchar(200) NOT NULL,
	"video_upload" varchar(100) NOT NULL,
	"title" varchar(200) NOT NULL,
	"description" text NOT NULL,
	"date_added" date NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "carl_story" OWNER TO "sts";

-- ----------------------------
--  Table structure for "django_content_type"
-- ----------------------------
DROP TABLE IF EXISTS "django_content_type";
CREATE TABLE "django_content_type" (
	"id" int4 NOT NULL DEFAULT nextval('django_content_type_id_seq'::regclass),
	"app_label" varchar(100) NOT NULL,
	"model" varchar(100) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "django_content_type" OWNER TO "sts";

-- ----------------------------
--  Records of "django_content_type"
-- ----------------------------
BEGIN;
INSERT INTO "django_content_type" VALUES ('1', 'admin', 'logentry');
INSERT INTO "django_content_type" VALUES ('2', 'auth', 'permission');
INSERT INTO "django_content_type" VALUES ('3', 'auth', 'group');
INSERT INTO "django_content_type" VALUES ('4', 'auth', 'user');
INSERT INTO "django_content_type" VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO "django_content_type" VALUES ('6', 'sessions', 'session');
INSERT INTO "django_content_type" VALUES ('7', 'carl', 'bucketlistitem');
INSERT INTO "django_content_type" VALUES ('8', 'carl', 'video');
INSERT INTO "django_content_type" VALUES ('9', 'carl', 'story');
INSERT INTO "django_content_type" VALUES ('10', 'carl', 'photo');
COMMIT;

-- ----------------------------
--  Table structure for "auth_group"
-- ----------------------------
DROP TABLE IF EXISTS "auth_group";
CREATE TABLE "auth_group" (
	"id" int4 NOT NULL DEFAULT nextval('auth_group_id_seq'::regclass),
	"name" varchar(80) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "auth_group" OWNER TO "sts";

-- ----------------------------
--  Table structure for "auth_user_groups"
-- ----------------------------
DROP TABLE IF EXISTS "auth_user_groups";
CREATE TABLE "auth_user_groups" (
	"id" int4 NOT NULL DEFAULT nextval('auth_user_groups_id_seq'::regclass),
	"user_id" int4 NOT NULL,
	"group_id" int4 NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "auth_user_groups" OWNER TO "sts";

-- ----------------------------
--  Table structure for "auth_user"
-- ----------------------------
DROP TABLE IF EXISTS "auth_user";
CREATE TABLE "auth_user" (
	"id" int4 NOT NULL DEFAULT nextval('auth_user_id_seq'::regclass),
	"password" varchar(128) NOT NULL,
	"last_login" timestamp(6) WITH TIME ZONE,
	"is_superuser" bool NOT NULL,
	"username" varchar(30) NOT NULL,
	"first_name" varchar(30) NOT NULL,
	"last_name" varchar(30) NOT NULL,
	"email" varchar(254) NOT NULL,
	"is_staff" bool NOT NULL,
	"is_active" bool NOT NULL,
	"date_joined" timestamp(6) WITH TIME ZONE NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "auth_user" OWNER TO "sts";

-- ----------------------------
--  Records of "auth_user"
-- ----------------------------
BEGIN;
INSERT INTO "auth_user" VALUES ('1', 'pbkdf2_sha256$20000$wPLxjI7g5wzD$6RXYxLEJPIWy6eEXZadu+i2Ly2E490GdcP8EuVNj6yI=', '2015-08-10 15:56:28.84368-06', 't', 'sts', '', '', 'developers@supertopsecret.com', 't', 't', '2015-08-10 15:56:01.095921-06');
COMMIT;

-- ----------------------------
--  Table structure for "django_admin_log"
-- ----------------------------
DROP TABLE IF EXISTS "django_admin_log";
CREATE TABLE "django_admin_log" (
	"id" int4 NOT NULL DEFAULT nextval('django_admin_log_id_seq'::regclass),
	"action_time" timestamp(6) WITH TIME ZONE NOT NULL,
	"object_id" text,
	"object_repr" varchar(200) NOT NULL,
	"action_flag" int2 NOT NULL,
	"change_message" text NOT NULL,
	"content_type_id" int4,
	"user_id" int4 NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "django_admin_log" OWNER TO "sts";

-- ----------------------------
--  Table structure for "auth_permission"
-- ----------------------------
DROP TABLE IF EXISTS "auth_permission";
CREATE TABLE "auth_permission" (
	"id" int4 NOT NULL DEFAULT nextval('auth_permission_id_seq'::regclass),
	"name" varchar(255) NOT NULL,
	"content_type_id" int4 NOT NULL,
	"codename" varchar(100) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "auth_permission" OWNER TO "sts";

-- ----------------------------
--  Records of "auth_permission"
-- ----------------------------
BEGIN;
INSERT INTO "auth_permission" VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO "auth_permission" VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO "auth_permission" VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO "auth_permission" VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO "auth_permission" VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO "auth_permission" VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO "auth_permission" VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO "auth_permission" VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO "auth_permission" VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO "auth_permission" VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO "auth_permission" VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO "auth_permission" VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO "auth_permission" VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO "auth_permission" VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO "auth_permission" VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO "auth_permission" VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO "auth_permission" VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO "auth_permission" VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO "auth_permission" VALUES ('19', 'Can add bucket list item', '7', 'add_bucketlistitem');
INSERT INTO "auth_permission" VALUES ('20', 'Can change bucket list item', '7', 'change_bucketlistitem');
INSERT INTO "auth_permission" VALUES ('21', 'Can delete bucket list item', '7', 'delete_bucketlistitem');
INSERT INTO "auth_permission" VALUES ('22', 'Can add video', '8', 'add_video');
INSERT INTO "auth_permission" VALUES ('23', 'Can change video', '8', 'change_video');
INSERT INTO "auth_permission" VALUES ('24', 'Can delete video', '8', 'delete_video');
INSERT INTO "auth_permission" VALUES ('25', 'Can add story', '9', 'add_story');
INSERT INTO "auth_permission" VALUES ('26', 'Can change story', '9', 'change_story');
INSERT INTO "auth_permission" VALUES ('27', 'Can delete story', '9', 'delete_story');
INSERT INTO "auth_permission" VALUES ('28', 'Can add photo', '10', 'add_photo');
INSERT INTO "auth_permission" VALUES ('29', 'Can change photo', '10', 'change_photo');
INSERT INTO "auth_permission" VALUES ('30', 'Can delete photo', '10', 'delete_photo');
COMMIT;

-- ----------------------------
--  Table structure for "auth_user_user_permissions"
-- ----------------------------
DROP TABLE IF EXISTS "auth_user_user_permissions";
CREATE TABLE "auth_user_user_permissions" (
	"id" int4 NOT NULL DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass),
	"user_id" int4 NOT NULL,
	"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "auth_user_user_permissions" OWNER TO "sts";

-- ----------------------------
--  Table structure for "django_session"
-- ----------------------------
DROP TABLE IF EXISTS "django_session";
CREATE TABLE "django_session" (
	"session_key" varchar(40) NOT NULL,
	"session_data" text NOT NULL,
	"expire_date" timestamp(6) WITH TIME ZONE NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "django_session" OWNER TO "sts";

-- ----------------------------
--  Records of "django_session"
-- ----------------------------
BEGIN;
INSERT INTO "django_session" VALUES ('o8z8xf7ebt39b52gk67cebuo3ldqj4yo', 'ODI2MmVjMDVjOTg5ZGM3NmFhMWE2MjZmNjk1MTgyZDhjNDBhOTI5Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImI4ZDVkNWM5Y2NjZjhlZmE1MTI2ZTAzNTkxNGE4ZDk0Zjk2ZmEzMGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-08-24 15:56:28.845561-06');
COMMIT;


-- ----------------------------
--  Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "auth_group_id_seq" OWNED BY "auth_group"."id";
ALTER SEQUENCE "auth_group_permissions_id_seq" OWNED BY "auth_group_permissions"."id";
ALTER SEQUENCE "auth_permission_id_seq" OWNED BY "auth_permission"."id";
ALTER SEQUENCE "auth_user_groups_id_seq" OWNED BY "auth_user_groups"."id";
ALTER SEQUENCE "auth_user_id_seq" OWNED BY "auth_user"."id";
ALTER SEQUENCE "auth_user_user_permissions_id_seq" OWNED BY "auth_user_user_permissions"."id";
ALTER SEQUENCE "carl_bucketlistitem_id_seq" OWNED BY "carl_bucketlistitem"."id";
ALTER SEQUENCE "carl_photo_id_seq" OWNED BY "carl_photo"."id";
ALTER SEQUENCE "carl_story_id_seq" OWNED BY "carl_story"."id";
ALTER SEQUENCE "carl_video_id_seq" OWNED BY "carl_video"."id";
ALTER SEQUENCE "django_admin_log_id_seq" OWNED BY "django_admin_log"."id";
ALTER SEQUENCE "django_content_type_id_seq" OWNED BY "django_content_type"."id";
ALTER SEQUENCE "django_migrations_id_seq" OWNED BY "django_migrations"."id";
-- ----------------------------
--  Primary key structure for table "carl_bucketlistitem"
-- ----------------------------
ALTER TABLE "carl_bucketlistitem" ADD CONSTRAINT "carl_bucketlistitem_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table "django_migrations"
-- ----------------------------
ALTER TABLE "django_migrations" ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table "carl_video"
-- ----------------------------
ALTER TABLE "carl_video" ADD CONSTRAINT "carl_video_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table "carl_photo"
-- ----------------------------
ALTER TABLE "carl_photo" ADD CONSTRAINT "carl_photo_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table "auth_group_permissions"
-- ----------------------------
ALTER TABLE "auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "auth_group_permissions"
-- ----------------------------
CREATE INDEX "auth_group_permissions_0e939a4f" ON "auth_group_permissions" USING btree(group_id ASC NULLS LAST);
CREATE INDEX "auth_group_permissions_8373b171" ON "auth_group_permissions" USING btree(permission_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table "carl_story"
-- ----------------------------
ALTER TABLE "carl_story" ADD CONSTRAINT "carl_story_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table "django_content_type"
-- ----------------------------
ALTER TABLE "django_content_type" ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table "auth_group"
-- ----------------------------
ALTER TABLE "auth_group" ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "auth_group"
-- ----------------------------
CREATE INDEX "auth_group_name_253ae2a6331666e8_like" ON "auth_group" USING btree("name" ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table "auth_user_groups"
-- ----------------------------
ALTER TABLE "auth_user_groups" ADD CONSTRAINT "auth_user_groups_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "auth_user_groups"
-- ----------------------------
CREATE INDEX "auth_user_groups_0e939a4f" ON "auth_user_groups" USING btree(group_id ASC NULLS LAST);
CREATE INDEX "auth_user_groups_e8701ad4" ON "auth_user_groups" USING btree(user_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table "auth_user"
-- ----------------------------
ALTER TABLE "auth_user" ADD CONSTRAINT "auth_user_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "auth_user"
-- ----------------------------
CREATE INDEX "auth_user_username_51b3b110094b8aae_like" ON "auth_user" USING btree(username ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table "django_admin_log"
-- ----------------------------
ALTER TABLE "django_admin_log" ADD CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "django_admin_log"
-- ----------------------------
CREATE INDEX "django_admin_log_417f1b1c" ON "django_admin_log" USING btree(content_type_id ASC NULLS LAST);
CREATE INDEX "django_admin_log_e8701ad4" ON "django_admin_log" USING btree(user_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table "auth_permission"
-- ----------------------------
ALTER TABLE "auth_permission" ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "auth_permission"
-- ----------------------------
CREATE INDEX "auth_permission_417f1b1c" ON "auth_permission" USING btree(content_type_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table "auth_user_user_permissions"
-- ----------------------------
ALTER TABLE "auth_user_user_permissions" ADD CONSTRAINT "auth_user_user_permissions_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "auth_user_user_permissions"
-- ----------------------------
CREATE INDEX "auth_user_user_permissions_8373b171" ON "auth_user_user_permissions" USING btree(permission_id ASC NULLS LAST);
CREATE INDEX "auth_user_user_permissions_e8701ad4" ON "auth_user_user_permissions" USING btree(user_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table "django_session"
-- ----------------------------
ALTER TABLE "django_session" ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "django_session"
-- ----------------------------
CREATE INDEX "django_session_de54fa62" ON "django_session" USING btree(expire_date ASC NULLS LAST);
CREATE INDEX "django_session_session_key_461cfeaa630ca218_like" ON "django_session" USING btree(session_key ASC NULLS LAST);

