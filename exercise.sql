--Acabei fazendo aqui sem adicionar em arquivo .sql, fiz tudo pelo pgAdmin e ficou salvo la, nao consigo mais acessar os comandos de CREATE TABLE anteriores. Porém eu consegui gerar uma imagem do banco modelado.

CREATE TABLE "transactions" (
	id SERIAL PRIMARY KEY,
	"bankAccountId" integer NOT NULL REFERENCES "bankAccount"(id),
	amount integer NOT NULL,
	type text NOT NULL,
	time timestamp NOT NULL DEFAULT NOW(),
	description text,
	cancelled BOOLEAN DEFAULT FALSE
)

CREATE TABLE "creditCards" (
	id SERIAL PRIMARY KEY,
	"bankAccountId" integer NOT NULL REFERENCES "bankAccount"(id),
	name text NOT NULL,
	number VARCHAR(16) NOT NULL UNIQUE,
	"securityCode" VARCHAR(3) NOT NULL,
	"expirationMonth" VARCHAR(2) NOT NULL,
	"expirationYear" VARCHAR(2) NOT NULL,
	password integer NOT NULL,
	"limit" integer NOT NULL
)
