-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/rQRMYp
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "world_bank" (
    "country_name" VARCHAR   NOT NULL,
    "country_code" VARCHAR   NOT NULL,
    "region_code" VARCHAR   NOT NULL,
    "gdp" INT   NOT NULL,
    "population" INT   NOT NULL,
    "population_cgr" FLOAT   NOT NULL,
    "internet_users" INT   NOT NULL,
    "life_expectancy" INT   NOT NULL,
    CONSTRAINT "pk_world_bank" PRIMARY KEY (
        "country_name"
     )
);

CREATE TABLE "billionaires" (
    "billionaire_id" SERIAL,
    "name" VARCHAR,
    "net_worth" FLOAT,
    "country_name" VARCHAR,
    "city" VARCHAR,
    "state" VARCHAR,
    "Status" VARCHAR,
    "Children" FLOAT,
    "dropout" BOOLEAN,
    "School1" VARCHAR,
    "School2" VARCHAR,
    "self_made" BOOLEAN,
    CONSTRAINT "pk_billionaires" PRIMARY KEY (
        "billionaire_id"
     )
);


ALTER TABLE "billionaires" ADD CONSTRAINT "fk_billionaires_country_name" FOREIGN KEY("country_name")
REFERENCES "world_bank" ("country_name");
