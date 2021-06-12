-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/rQRMYp
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "billionaires" (
    "billionaire_id" SERIAL   NOT NULL,
    "name" VARCHAR   NOT NULL,
    "net_worth" INT   NOT NULL,
    "country_name" VARCHAR   NOT NULL,
    "city" VARCHAR   NOT NULL,
    "state" VARCHAR   NOT NULL,
    "status" VARCHAR   NOT NULL,
    "children" INT   NOT NULL,
    "degree" VARCHAR   NOT NULL,
    "university" VARCHAR   NOT NULL,
    "self_made" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_billionaires" PRIMARY KEY (
        "billionaire_id"
     )
);

CREATE TABLE "world_bank" (
    "country_name" VARCHAR   NOT NULL,
    "country_code" VARCHAR   NOT NULL,
    "region_code" VARCHAR   NOT NULL,
    "gdp" INT   NOT NULL,
    "population" INT   NOT NULL,
    "population_cgr" INT   NOT NULL,
    "internet_users" INT   NOT NULL,
    "life_expectancy" INT   NOT NULL,
    CONSTRAINT "pk_world_bank" PRIMARY KEY (
        "country_name"
     )
);

ALTER TABLE "billionaires" ADD CONSTRAINT "fk_billionaires_country_name" FOREIGN KEY("country_name")
REFERENCES "world_bank" ("country_name");
