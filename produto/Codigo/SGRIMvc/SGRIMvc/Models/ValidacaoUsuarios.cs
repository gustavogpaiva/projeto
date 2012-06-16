using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace SGRIMvc.Models
{
    [MetadataType(typeof(UsuariosMetadata))]
    public partial class FUNCIONARIOS
    {

    }

    public class UsuariosMetadata
    {
        [Required(ErrorMessage = "Por favor, informe o ID do Funcionário.")]
        public string IDFuncionario{ get; set; }

        [Required(ErrorMessage = "Por favor, informe a Matrícula do Patrimônio")]
        public string Matricula_Funcionario { get; set; }

        [Required(ErrorMessage = "Por favor, informe o Nome do Funcionário.")]
        public string Nome_Funcionario { get; set; }

        [Required(ErrorMessage = "Por favor, informe o Tipo do Funcionário")]
        public string Tipo_Funcionario { get; set; }

        [Required(ErrorMessage = "Por favor, informe o Cargo do Funcionário")]
        public string Cargo_Funcionario { get; set; }

        [Required(ErrorMessage = "Por favor, informe o Login do Funcionário")]
        public string Login_Funcionario { get; set; }

        [Required(ErrorMessage = "Por favor, informe a Senha do Funcionário")]
        public string Senha_Funcionario { get; set; }

    }

}