# AlunosApi

Este é o projeto AlunosApi, uma API desenvolvida para gerenciar informações de alunos. Abaixo estão as instruções detalhadas para clonar, instalar e usar a API, além de uma explicação básica sobre seu funcionamento.

## Índice

1. [Pré-requisitos](#pré-requisitos)
2. [Passo a Passo para Clonar o Repositório e Rodar a Web API](#passo-a-passo-para-clonar-o-repositório-e-rodar-a-web-api)
    1. [Clonar o Repositório](#1-clonar-o-repositório)
    2. [Configurar a Base de Dados](#2-configurar-a-base-de-dados)
    3. [Configurar appsettings.json](#3-configurar-appsettingsjson)
    4. [Restaurar Dependências](#4-restaurar-dependências)
    5. [Aplicar Migrations (Opcional)](#5-aplicar-migrations-opcional)
    6. [Rodar o Projeto](#6-rodar-o-projeto)
    7. [Acessar a API](#7-acessar-a-api)
3. [Endpoints Disponíveis](#endpoints-disponíveis)
4. [Funcionamento Básico](#funcionamento-básico)

## Pré-requisitos

- .NET 6.0 SDK ou superior instalado
- Git instalado
- MySQL Server (se estiver usando MySQL) ou ajustar para usar um banco de dados em memória como SQLite para facilidade de teste.

## Passo a Passo para Clonar o Repositório e Rodar a Web API

### 1. Clonar o Repositório

Abra um terminal ou prompt de comando e execute os seguintes comandos:

```sh
git clone https://github.com/seu-usuario/seu-repositorio.git
cd seu-repositorio

2. Configurar a Base de Dados
Se você estiver usando MySQL, certifique-se de que o servidor MySQL está em execução e crie um banco de dados para a aplicação com as seguintes credenciais:

Nome do Banco de Dados: AlunosReactApi
Usuário: root
Senha: rootpassword
3. Configurar appsettings.json
Verifique e ajuste as configurações no arquivo appsettings.json:

json
Copiar código
{
  "Jwt": {
    "Key": "SuaChaveSuperSecretaEComPeloMenos32CaracteresSeNaoNaoVai",
    "Issuer": "egermano",
    "Audience": "egermano"
  },
  "ConnectionStrings": {
    "DefaultConnection": "server=localhost;port=3306;database=AlunosReactApi;user=root;password=rootpassword"
  },
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft.AspNetCore": "Warning"
    }
  },
  "AllowedHosts": "*"
}
4. Restaurar Dependências
No terminal, execute o seguinte comando para restaurar as dependências do projeto:

sh
Copiar código
dotnet restore
5. Aplicar Migrations (Opcional)
Se você estiver usando MySQL, aplique as migrations para configurar o banco de dados:

sh
Copiar código
dotnet ef database update
6. Rodar o Projeto
No terminal, execute o projeto:

sh
Copiar código
dotnet run
7. Acessar a API
Abra o navegador e vá para https://localhost:7191 para acessar a interface do Swagger.

Endpoints Disponíveis
Login:
POST /api/Login/CreateUser: Cria um novo usuário.
POST /api/Login/LoginUser: Faz login e retorna um token JWT.
Estudantes (Requer token JWT):
GET /api/Estudantes: Retorna todos os estudantes.
POST /api/Estudantes: Cria um novo estudante.
GET /api/Estudantes/EstudantesPorNome: Retorna estudantes por nome.
GET /api/Estudantes/{id}: Retorna as informações de um estudante específico.
PUT /api/Estudantes/{id}: Atualiza as informações de um estudante específico.
DELETE /api/Estudantes/{id}: Deleta um estudante específico.
Funcionamento Básico
A API possui endpoints para realizar operações CRUD (Create, Read, Update, Delete) para gerenciar informações de alunos. Aqui estão alguns exemplos de endpoints disponíveis:

GET /alunos: Retorna a lista de todos os alunos.
POST /alunos: Cria um novo aluno.
GET /alunos/{id}: Retorna as informações de um aluno específico.
PUT /alunos/{id}: Atualiza as informações de um aluno específico.
DELETE /alunos/{id}: Deleta um aluno específico.
Adicionar Imagem no README
Para adicionar uma imagem no README, você pode usar a seguinte sintaxe:

### Passos para adicionar uma imagem ao seu repositório:

1. Coloque a imagem na pasta desejada dentro do repositório. Por exemplo, `./imagens/logo.png`.
2. Use o caminho relativo para a imagem no seu README como mostrado acima.

Se precisar de mais alguma coisa ou tiver alguma dúvida, estou à disposição!
