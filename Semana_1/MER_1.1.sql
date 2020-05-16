CREATE TABLE "professor" (
  "professor_id" int PRIMARY KEY,
  "name" varchar(50),
  "cpf" int,
  "rg" int,
  "sex" varchar(6),
  "email" varchar(50),
  "graduate_year" date,
  "date_of_birth" date
);

CREATE TABLE "programming_language" (
  "programming_language_id" int PRIMARY KEY,
  "programming_language_name" varchar(50)
);

CREATE TABLE "professor_programming_language" (
  "professor_id" int,
  "programming_language_id" int
);

CREATE TABLE "student" (
  "student_id" int PRIMARY KEY,
  "name" varchar(50),
  "cpf" int,
  "rg" int,
  "date_of_birth" date,
  "address" varchar(50),
  "professor_id" int,
  "city_id" int
);

CREATE TABLE "city" (
  "city_id" int PRIMARY KEY,
  "city_name" varchar(50),
  "state_id" int
);

CREATE TABLE "state" (
  "state_id" int PRIMARY KEY,
  "state_name" varchar(50)
);

ALTER TABLE "professor_programming_language" ADD FOREIGN KEY ("professor_id") REFERENCES "professor" ("professor_id");

ALTER TABLE "professor_programming_language" ADD FOREIGN KEY ("programming_language_id") REFERENCES "programming_language" ("programming_language_id");

ALTER TABLE "student" ADD FOREIGN KEY ("professor_id") REFERENCES "professor" ("professor_id");

ALTER TABLE "student" ADD FOREIGN KEY ("city_id") REFERENCES "city" ("city_id");

ALTER TABLE "city" ADD FOREIGN KEY ("state_id") REFERENCES "state" ("state_id");
