CREATE TABLE "dentist" (
  "dentist_id" int PRIMARY KEY,
  "name" varchar(50),
  "cpf" int,
  "rg" int,
  "sex" varchar(12),
  "email" varchar(50),
  "cro_code" int,
  "room_id" int
);

CREATE TABLE "specialization" (
  "specialization_id" int PRIMARY KEY,
  "specialization_name" nvarchar
);

CREATE TABLE "dentists_specialization" (
  "dentist_id" int,
  "specialization_id" int
);

CREATE TABLE "room" (
  "room_id" int PRIMARY KEY,
  "number" int
);

CREATE TABLE "client" (
  "client_id" int PRIMARY KEY,
  "name" nvarchar,
  "cpf" int,
  "rg" int,
  "sex" nvarchar,
  "email" nvarchar
);

CREATE TABLE "dentist_client" (
  "dentist_id" int,
  "client_id" int
);

CREATE TABLE "appointment" (
  "appointment_id" int PRIMARY KEY,
  "date" date,
  "dentist_id" int,
  "client_id" int
);

ALTER TABLE "dentist" ADD FOREIGN KEY ("room_id") REFERENCES "room" ("room_id");

ALTER TABLE "dentists_specialization" ADD FOREIGN KEY ("dentist_id") REFERENCES "dentist" ("dentist_id");

ALTER TABLE "dentists_specialization" ADD FOREIGN KEY ("specialization_id") REFERENCES "specialization" ("specialization_id");

ALTER TABLE "dentist_client" ADD FOREIGN KEY ("dentist_id") REFERENCES "dentist" ("dentist_id");

ALTER TABLE "dentist_client" ADD FOREIGN KEY ("client_id") REFERENCES "client" ("client_id");

ALTER TABLE "appointment" ADD FOREIGN KEY ("dentist_id") REFERENCES "dentist" ("dentist_id");

ALTER TABLE "appointment" ADD FOREIGN KEY ("client_id") REFERENCES "client" ("client_id");
