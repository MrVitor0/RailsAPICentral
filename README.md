# Versões do Sistema
* Banco de dados Utilizado
- PostgreSQL
* Versão do Banco de Dados
- 14.4
* Versão do Ruby
- 3.1.12
* Versão do Rails
- 7.0.3.1

# Como rodar o Sistema?
- https://ruby.elisyumcorp.com (Online até o dia 29/08/2022)

# Verifique as instalações externas
- Instalar o Ruby (Caso não tenha instalado)
- Instalar o Rails (Caso não tenha instalado) 
- Instalar o PostgreSQL (Caso não tenha instalado)

# Instale Dependências
- bundle install

# Ajuste o Banco de Dados
- Local p/ adicionar dados de login: [/config/database.yml](./config/database.yml)
- Ajuste os campos:

![Banco de Dados - Campos](/public/database.png)

# Migre o banco de dados
- rails db:create
- rails db:migrate

# Como Rodar o Servidor
- rails server

