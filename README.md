Passo a Passo para Clonar o Repositório e Rodar a Web API
Pré-requisitos
.NET 6.0 SDK ou superior instalado
Git instalado
MySQL Server (se estiver usando MySQL) ou ajustar para usar um banco de dados em memória como SQLite para facilidade de teste.
1. Clonar o Repositório
Abra um terminal ou prompt de comando.
Clone o repositório:
sh
Copiar código
git clone https://github.com/seu-usuario/seu-repositorio.git
cd seu-repositorio
2. Configurar a Base de Dados
Se você estiver usando MySQL, certifique-se de que o servidor MySQL está em execução e crie um banco de dados para a aplicação.

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
Swagger UI: Abra o navegador e vá para https://localhost:7191 para acessar a interface do Swagger.
8. Endpoints Disponíveis
Login:
POST /api/Login/CreateUser: Cria um novo usuário.
POST /api/Login/LoginUser: Faz login e retorna um token JWT.
Estudantes (Requer token JWT):
GET /api/Estudantes: Retorna todos os estudantes.
POST /api/Estudantes: Cria um novo estudante.
GET /api/Estudantes/EstudantesPorNome: Retorna estudantes por nome.
`GET /api/Estudantes/{id
