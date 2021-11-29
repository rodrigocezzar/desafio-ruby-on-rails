CNAB APPLICATION

=====================================================================

DESCRIÇÃO============================================================

Este aplicativo tem o objetivo de fazer um upload de um arquivo do tipo CNAB.txt, parsear estas informações e
salvá-las no banco de dados e apresentá-las em uma tela web.

=====================================================================

INSTALAÇÃO===========================================================

Para instalação e execução do programa é necessário:

Ruby version 3.0.1
Rails version 6.1.4.1

Faça o clone do projeto:

git@github.com:rodrigocezzar/desafio-ruby-on-rails.git

Para as dependências do projeto, acesse a pasta do projeto (app_CNAB) e rode o comando:

bundle install

Para criação do Banco de Dados e criação das tabelas execute:

rake db:create
rake db:migrate

EXECUÇÃO============================================================

Para iniciar o servidor da aplicação execute o comando:

rails s

ACESSO=============================================================

Para fazer o upload do arquivo acesse o endereço:

http://localhost:3000

Escolha o arquivo CNAB.txt (que acompanha o projeto)

Clique em upload

http://localhost:3000/transactions/show

Para verificar o saldo das empresas clique em saldos

http://localhost:3000/transactions/balance

=====================================================================
