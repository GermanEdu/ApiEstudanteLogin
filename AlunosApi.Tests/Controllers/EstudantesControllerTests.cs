using AlunosReactApi.Controllers;
using AlunosReactApi.Models;
using AlunosReactApi.Services;
using Microsoft.AspNetCore.Mvc;
using Moq;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Xunit;

namespace AlunosApi.Tests.Controllers
{
    public class EstudantesControllerTests
    {
        private readonly Mock<IAlunoService> _mockService;
        private readonly EstudantesController _controller;

        public EstudantesControllerTests()
        {
            _mockService = new Mock<IAlunoService>();
            _controller = new EstudantesController(_mockService.Object);
        }

        [Fact]
        public async Task GetAlunos_ReturnsOkResult_WithListOfAlunos()
        {
            var alunos = new List<Aluno>
            {
                new Aluno { Id = 1, Nome = "Alice", Idade = 10, Serie = 5, NotaMedia = 8.5, Endereco = "123 Main St", NomePai = "John Doe", NomeMae = "Jane Doe", DataNascimento = new DateTime(2013, 5, 15) },
                new Aluno { Id = 2, Nome = "Bob", Idade = 11, Serie = 6, NotaMedia = 7.2, Endereco = "456 Oak St", NomePai = "Bob Smith", NomeMae = "Alice Smith", DataNascimento = new DateTime(2012, 8, 21) }
            };

            _mockService.Setup(s => s.GetAlunos()).ReturnsAsync(alunos);

            var result = await _controller.GetAlunos();

            var okResult = Assert.IsType<OkObjectResult>(result);
            var returnValue = Assert.IsType<List<Aluno>>(okResult.Value);
            Assert.Equal(2, returnValue.Count);
        }

        [Fact]
        public async Task GetAluno_UnknownId_ReturnsNotFoundResult()
        {
            _mockService.Setup(s => s.GetAluno(It.IsAny<int>())).ReturnsAsync((Aluno)null);

            var result = await _controller.GetAluno(99);
            Assert.IsType<NotFoundResult>(result);
        }

        [Fact]
        public async Task GetAluno_KnownId_ReturnsOkResult()
        {
            var aluno = new Aluno { Id = 1, Nome = "Alice", Idade = 10, Serie = 5, NotaMedia = 8.5, Endereco = "123 Main St", NomePai = "John Doe", NomeMae = "Jane Doe", DataNascimento = new DateTime(2013, 5, 15) };
            _mockService.Setup(s => s.GetAluno(1)).ReturnsAsync(aluno);

            var result = await _controller.GetAluno(1);

            var okResult = Assert.IsType<OkObjectResult>(result);
            var returnValue = Assert.IsType<Aluno>(okResult.Value);
            Assert.Equal("Alice", returnValue.Nome);
        }

        [Fact]
        public async Task Create_ReturnsCreatedAtActionResult()
        {
            var newAluno = new Aluno { Id = 3, Nome = "Charlie", Idade = 9, Serie = 4, NotaMedia = 9.0, Endereco = "789 Pine St", NomePai = "Charlie Brown", NomeMae = "Lucy Brown", DataNascimento = new DateTime(2014, 2, 10) };

            _mockService.Setup(s => s.CreateAluno(newAluno)).Returns(Task.CompletedTask);

            var result = await _controller.Create(newAluno);

            var createdAtRouteResult = Assert.IsType<CreatedAtRouteResult>(result);
            var returnValue = Assert.IsType<Aluno>(createdAtRouteResult.Value);
            Assert.Equal("Charlie", returnValue.Nome);
        }

        [Fact]
        public async Task Update_ReturnsNoContentResult()
        {
            var updatedAluno = new Aluno { Id = 1, Nome = "Alice Updated", Idade = 10, Serie = 5, NotaMedia = 8.5, Endereco = "123 Main St", NomePai = "John Doe", NomeMae = "Jane Doe", DataNascimento = new DateTime(2013, 5, 15) };

            _mockService.Setup(s => s.UpdateAluno(updatedAluno)).Returns(Task.CompletedTask);

            var result = await _controller.Update(1, updatedAluno);
            Assert.IsType<NoContentResult>(result);
        }

        [Fact]
        public async Task Delete_ReturnsOkResult()
        {
            var aluno = new Aluno { Id = 1, Nome = "Alice", Idade = 10, Serie = 5, NotaMedia = 8.5, Endereco = "123 Main St", NomePai = "John Doe", NomeMae = "Jane Doe", DataNascimento = new DateTime(2013, 5, 15) };

            _mockService.Setup(s => s.GetAluno(1)).ReturnsAsync(aluno);
            _mockService.Setup(s => s.DeleteAluno(aluno)).Returns(Task.CompletedTask);

            var result = await _controller.Delete(1);
            var okResult = Assert.IsType<OkObjectResult>(result);
            var returnValue = Assert.IsType<string>(okResult.Value);
            Assert.Equal("Aluno de id=1 foi excluido com sucesso !!", returnValue);
        }
    }
}
