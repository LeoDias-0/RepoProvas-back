CREATE DATABASE "repo_provas";

\c repo_provas

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

INSERT INTO "exams" (
	"name",
	"category",
	"period",
	"professor",
	"discipline",
	"link"
	) VALUES
	('2020.2', 'P1', 'Terceiro', 'Professor X', 'Geometria Diferencial', 'https://pt.wikipedia.org/wiki/Geometria_diferencial'),
	('2015.2', 'Outras', 'Segundo', 'Jovem Nerd', 'Geometria Diferencial', 'https://pt.wikipedia.org/wiki/Geometria_diferencial#Geometria_riemanniana'),
	('2018.1', 'P3', 'Terceiro', 'Isaac Newton', 'Geometria Diferencial', 'https://pt.wikipedia.org/wiki/Geometria_diferencial#Geometria_simpl%C3%A9tica'),
	('2021.1', 'P2', 'Nono', 'Henry Poincaré', 'Geometria Diferencial', 'https://pt.wikipedia.org/wiki/Geometria_diferencial#Geometria_complexa_e_K%C3%A4hler'),
	('2007.2', '2ch', 'Quarto', 'Marcelo Viana', 'Geometria Diferencial', 'https://pt.wikipedia.org/wiki/Geometria_diferencial#Teoria_do_calibre_(ou_teoria_de_Gauge)'),
	('2020.2', 'P1', 'Terceiro', 'Jovem Nerd', 'Topologia Algébrica', 'https://pt.wikipedia.org/wiki/Topologia_alg%C3%A9brica'),
	('2015.2', 'Outras', 'Terceiro', 'Isaac Newton', 'Topologia Algébrica', 'https://pt.wikipedia.org/wiki/Topologia_alg%C3%A9brica#Grupos_de_Homotopia'),
	('2020.2', '2ch', 'Terceiro', 'Henry Poincaré', 'Topologia Algébrica', 'https://pt.wikipedia.org/wiki/Topologia_alg%C3%A9brica#Homologia'),
	('2018.1', 'P2', 'Quinto', 'Marcelo Viana', 'Topologia Algébrica', 'https://pt.wikipedia.org/wiki/Topologia_alg%C3%A9brica#Variedades'),
	('2018.1', 'P1', 'Sexto', 'Isaac Newton', 'Programação Linear', 'https://pt.wikipedia.org/wiki/Programa%C3%A7%C3%A3o_linear'),
	('2019.1', 'Outras', 'Sétimo', 'Henry Poincaré', 'Programação Linear', 'https://pt.wikipedia.org/wiki/Simplex'),
	('2008.2', 'P3', 'Oitavo', 'Marcelo Viana', 'Programação Linear', 'https://pt.wikipedia.org/wiki/Dualidade_(otimiza%C3%A7%C3%A3o)'),
	('2018.2', 'P2', 'Primeiro', 'Henry Poincaré', 'Dinâmica Não Autônoma', 'https://pt.wikipedia.org/wiki/Sistema_din%C3%A2mico_n%C3%A3o_linear'),
	('2020.2', 'Outras', 'Segundo', 'Marcelo Viana', 'Dinâmica Não Autônoma', 'https://repositorio.ufsc.br/bitstream/handle/123456789/220586/TCC%20Leo%20Amaro%20Dias.pdf?sequence=1&isAllowed=y'),
	('2009.2', '2ch', 'Quinto', 'Marcelo Viana', 'Variedades Instáveis', 'https://pt.wikipedia.org/wiki/Sistema_din%C3%A2mico#Exemplos_de_comportamentos_din%C3%A2micos');