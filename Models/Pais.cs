using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace PaisCap.Models
{
    public class Pais
    {
        [Key]
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Capital { get; set; }
    }
}
