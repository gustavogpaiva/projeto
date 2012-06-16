using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace SGRIMvc.Models
{
    [MetadataType(typeof(EquipamentosMetadata))]
    public partial class EQUIPAMENTOS
    {

    }

    public class EquipamentosMetadata
    {
        [Required(ErrorMessage = "Por favor, informe o ID do Equipamento.")]
        public string IDEquipamento { get; set; }

        [Required(ErrorMessage = "Por favor, informe o Código do Patrimônio")]
        public string Codigo_Patrimonio { get; set; }

        [Required(ErrorMessage = "Por favor, informe o Tipo do Equipamento.")]
        public string Tipo_Equipamento { get; set; }

        [Required(ErrorMessage = "Por favor, informe a Descrição do Equipamento")]
        public string Descricao_Equipamento { get; set; }

        [Required(ErrorMessage = "Por favor, informe o Status do Equipamento")]
        public string Status_Equipamento { get; set; }

    }

}