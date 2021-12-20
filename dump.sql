CREATE TABLE "exams" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL,
	"category" TEXT NOT NULL,
	"period" TEXT NOT NULL,
	"professor" TEXT NOT NULL,
	"discipline" TEXT NOT NULL,
	"link" TEXT NOT NULL UNIQUE,
	CONSTRAINT "exams_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);
