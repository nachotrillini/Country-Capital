using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using PaisCap.Data;
using PaisCap.Models;

namespace PaisCap.Pages.Paises
{
    public class IndexModel : PageModel
    {
        private readonly ApplicationDbContext _context;

        public IndexModel(ApplicationDbContext context)
        {
            _context = context;
        }

        public IEnumerable<Pais> Paises { get; set; }

        public async Task OnGet()
        {
            Paises = await _context.Pais.ToListAsync();
        }
    }
}
