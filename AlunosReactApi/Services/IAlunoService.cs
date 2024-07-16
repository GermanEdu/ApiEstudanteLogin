using AlunosReactApi.Models;

namespace AlunosReactApi.Services
{
    public interface IAlunoService
    {
        //Contratos Definidos 
        Task<IEnumerable<Aluno>> GetAlunos();
        Task<Aluno> GetAluno(int id);

        Task<IEnumerable<Aluno>> GetAlunosByNome(string nome);

        Task CreateAluno(Aluno aluno);

        Task UpdateAluno(Aluno aluno);

        Task DeleteAluno(Aluno aluno);



    }
}
