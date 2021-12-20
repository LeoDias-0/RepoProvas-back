


CREATE TABLE "exams" (
	"id" serial NOT NULL,
	"name" varchar(255) NOT NULL,
	"category_id" int NOT NULL,
	"period_id" int NOT NULL,
	"professor_id" int NOT NULL,
	"discipline_id" int NOT NULL,
	"link" TEXT NOT NULL UNIQUE,
	CONSTRAINT "exams_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "categories" (
	"id" serial NOT NULL,
	"category" varchar(255) NOT NULL UNIQUE,
	CONSTRAINT "categories_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "professors" (
	"id" serial NOT NULL,
	"professor" varchar(255) NOT NULL UNIQUE,
	CONSTRAINT "professors_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "periods" (
	"id" serial NOT NULL,
	"period" varchar(255) NOT NULL UNIQUE,
	CONSTRAINT "periods_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "disciplines" (
	"id" serial NOT NULL,
	"discipline" varchar(255) NOT NULL UNIQUE,
	CONSTRAINT "disciplines_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "lectures_relations" (
	"id" serial NOT NULL,
	"professor_id" int NOT NULL,
	"discipline_id" int NOT NULL,
	CONSTRAINT "lectures_relations_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "exams" ADD CONSTRAINT "exams_fk0" FOREIGN KEY ("category_id") REFERENCES "categories"("id");
ALTER TABLE "exams" ADD CONSTRAINT "exams_fk1" FOREIGN KEY ("period_id") REFERENCES "periods"("id");
ALTER TABLE "exams" ADD CONSTRAINT "exams_fk2" FOREIGN KEY ("professor_id") REFERENCES "professors"("id");
ALTER TABLE "exams" ADD CONSTRAINT "exams_fk3" FOREIGN KEY ("discipline_id") REFERENCES "disciplines"("id");





ALTER TABLE "lectures_relations" ADD CONSTRAINT "lectures_relations_fk0" FOREIGN KEY ("professor_id") REFERENCES "professors"("id");
ALTER TABLE "lectures_relations" ADD CONSTRAINT "lectures_relations_fk1" FOREIGN KEY ("discipline_id") REFERENCES "disciplines"("id");












