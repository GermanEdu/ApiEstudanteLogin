using AlunosReactApi.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace AlunosReactApi.Context
{
    //Faz a ponte entre a classe e o banco de dados 
    public class AppDbContext: IdentityDbContext<IdentityUser>
    {

        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) 
        { 
        
        }
        
        public DbSet<Aluno> Alunos { get; set; }

        //protected override void OnModelCreating(ModelBuilder modelBuilder)
        //{
        //    modelBuilder.Entity<Aluno>().HasData(


        //        new Aluno
        //        {
        //            Id = 1,
        //            Nome = "Eduardo Germano",
        //            Email = "germano.edu@gmail.com",
        //            Idade = 50
        //        });
        //}

    }
}
