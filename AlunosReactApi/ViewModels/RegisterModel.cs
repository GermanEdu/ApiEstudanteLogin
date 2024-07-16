﻿using System.ComponentModel.DataAnnotations;

namespace AlunosReactApi.ViewModels
{
    public class RegisterModel
    {
        [Required(ErrorMessage ="Email é obrigatório")]
        [EmailAddress(ErrorMessage ="Formato de email inválido")]
        public string? Email { get; set; }

        [Required(ErrorMessage = "Senha é obrigatória")]
        [DataType(DataType.Password)]
        public string? Password { get; set; }

        [Display(Name = "Confirma a senha")]
        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage ="Senhas não conferem")]
        public string? ConfirmPassword { get; set; }
    }
}