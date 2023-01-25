CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "name" varchar(60) NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL
);

CREATE TABLE "courses" (
  "id" serial PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" text NOT NULL,
  "level" char(1) NOT NULL,
  "teacher" varchar(60) NOT NULL,
  "categories_id" int
);

CREATE TABLE "users_courses" (
  "id" serial PRIMARY KEY,
  "users_id" int,
  "courses_id" int
);

CREATE TABLE "course_videos" (
  "id" serial PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar UNIQUE NOT NULL,
  "courses_id" int
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "course_videos" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("categories_id") REFERENCES "categories" ("id");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("users_id") REFERENCES "users" ("id");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");
