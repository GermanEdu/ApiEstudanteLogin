using AlunosReactApi.Models;
using AlunosReactApi.Services;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace AlunosReactApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    // [Produces("application/json")]
    [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    public class EstudantesController : ControllerBase
    {
        private IAlunoService _alunoService;

        public EstudantesController(IAlunoService alunoService)
        {
            _alunoService = alunoService;
        }

        [HttpGet]
        public async Task<ActionResult<IAsyncEnumerable<Aluno>>> GetAlunos()
        {
            try
            {
                var Alunos = await _alunoService.GetAlunos();
                return Ok(Alunos);
            }
            catch
            {
                return StatusCode(StatusCodes.Status500InternalServerError, "Erro ao obter os alunos");
            }
        }


        [HttpGet("AlunosPorNome")]
        public async Task<ActionResult<IAsyncEnumerable<Aluno>>>
            GetAlunosByName([FromQuery] string nome)
        {


            try
            {
                
                var Alunos = await _alunoService.GetAlunosByNome(nome);

                if (Alunos.Count() == 0)
                    return NotFound($"Não existe alunos com {nome}");

                return Ok(Alunos);
            }
            catch
            {
                return StatusCode(StatusCodes.Status500InternalServerError, "Erro ao obter os alunos");
            }
        }



        //retornar pelo Id 


        [HttpGet("{id:int}", Name ="GetAluno")]
        public async Task<ActionResult<Aluno>> GetAluno(int id)

        { 
            try
            {
                var Aluno = await _alunoService.GetAluno(id);

                return Ok(Aluno);

            }
            catch
            {
                return StatusCode(StatusCodes.Status500InternalServerError, $"Erro ao obter o aluno com id={ id}");
            }
        }




        //Criar Recurso método Post 

        [HttpPost]
        public async Task<ActionResult> Create(Aluno aluno)
        {
            try
            {
                await _alunoService.CreateAluno(aluno);

                return CreatedAtRoute(nameof(GetAluno), new {id = aluno.Id}, aluno);

            }
            catch
            {
                return BadRequest("Request inválido");
            }
        }



        [HttpPut("{id:int}")]
        public async Task<ActionResult> Update(int id, [FromBody] Aluno aluno)
        {
            try
            {
                if(aluno.Id == id)
                {
                await _alunoService.UpdateAluno(aluno);
                return NoContent();

                }
                else
                {
                    return BadRequest("Dados inconsistentes");
                }

            }
            catch
            {
                return BadRequest("Erro ao Atualizar");
            }
        }


        [HttpDelete("{id:int}")]
        public async Task<ActionResult> Delete(int id)
        {
            try
            {
               
                  var aluno =  await _alunoService.GetAluno(id);
                  
                if(aluno != null)
                {
                    await _alunoService.DeleteAluno(aluno);
                    return Ok($"Aluno de id={id} foi excluido com sucesso !!");
                }
                else
                {
                    return NotFound("Id não existe");
                }

            }
            catch
            {
                return BadRequest("Erro ao Atualizar");
            }
        }


    }
}
