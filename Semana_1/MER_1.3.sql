CREATE TABLE "flight" (
  "flight_id" int PRIMARY KEY,
  "estimated_departure_time" timestamp,
  "departure_time" timestamp,
  "estimated_arrival_time" timestamp,
  "arrival_time" timestamp,
  "departure_city_id" int,
  "arrival_city_id" int,
  "pilot_id" int,
  "airplane_id" int
);

CREATE TABLE "city" (
  "city_id" int PRIMARY KEY,
  "city_name" nvarchar,
  "state_id" int
);

CREATE TABLE "state" (
  "state_id" int PRIMARY KEY,
  "state_name" nvarchar
);

CREATE TABLE "pilot" (
  "pilot_id" int PRIMARY KEY,
  "name" nvarchar,
  "cpf" int,
  "rg" int,
  "email" nvarchar,
  "anac_code" int
);

CREATE TABLE "passenger" (
  "passenger_id" int PRIMARY KEY,
  "name" nvarchar,
  "cpf" int,
  "rg" int,
  "sex" nvarchar,
  "email" nvarchar,
  "date_of_birth" date,
  "flight_id" int
);

CREATE TABLE "airplane" (
  "airplane_id" [pk],
  "model" nvarchar,
  "registration_number" int,
  "number_of_seats" int
);

ALTER TABLE "flight" ADD FOREIGN KEY ("departure_city_id") REFERENCES "city" ("city_id");

ALTER TABLE "flight" ADD FOREIGN KEY ("arrival_city_id") REFERENCES "city" ("city_id");

ALTER TABLE "flight" ADD FOREIGN KEY ("pilot_id") REFERENCES "pilot" ("pilot_id");

ALTER TABLE "flight" ADD FOREIGN KEY ("airplane_id") REFERENCES "airplane" ("airplane_id");

ALTER TABLE "city" ADD FOREIGN KEY ("state_id") REFERENCES "state" ("state_id");

ALTER TABLE "flight" ADD FOREIGN KEY ("flight_id") REFERENCES "passenger" ("flight_id");
