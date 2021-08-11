using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using PaisCap.Data;
using PaisCap.Models;

namespace PaisCap.Pages.Paises
{
    public class DetailsModel : PageModel
    {
        private readonly ApplicationDbContext _context;

        public DetailsModel(ApplicationDbContext context)
        {
            _context = context;
        }

        [BindProperty]
        public Pais Pais { get; set; }

        public async void OnGet(int id)
        {
            Pais = await _context.Pais.FindAsync(id);
        }
    }
}
