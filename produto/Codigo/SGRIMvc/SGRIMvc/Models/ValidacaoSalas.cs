using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace SGRIMvc.Models
{
    [MetadataType(typeof(SalasMetadata))]
    public partial class SALAS
    {

    }

    public class SalasMetadata
    {
        [Required(ErrorMessage = "Por favor, informe o ID da Sala.")]
        public string IDSala { get; set; }

        [Required(ErrorMessage = "Por favor, informe a Descrição da Sala")]
        public string Descricao_Sala { get; set; }

        [Required(ErrorMessage = "Por favor, informe a Localização da Sala.")]
        public string Localizacao_Sala { get; set; }

        [Required(ErrorMessage = "Por favor, informe a Capacidade da Sala")]
        public string Capacidade_Sala { get; set; }

        [Required(ErrorMessage = "Por favor, informe o Tipo da Sala")]
        public string Tipo_Sala { get; set; }

    }

}