### Preparando o setup
Na raiz do projeto crie um arquivo `.env` com as suas credenciais do postgres assim como no arquivo `.env.example`.


### Criando a database

```bash

sudo su postgres

psql

\i ./create_database.sql

```