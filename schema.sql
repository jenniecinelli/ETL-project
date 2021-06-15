-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/rQRMYp
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "world_bank" (
	"world_bank_id" SERIAL,
    "country_name" VARCHAR,
    "country_code" VARCHAR,
    "region_code" VARCHAR,
    "gdp" INT,
    "population" BIGINT,
    "population_cgr" FLOAT,
    "internet_users" INT,
    "life_expectancy" INT,
    CONSTRAINT "pk_world_bank" PRIMARY KEY (
        "world_bank_id"
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
