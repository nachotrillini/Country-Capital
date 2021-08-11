using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;
using PaisCap.Data;
using PaisCap.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PaisCap.Pages
{
    public class IndexModel : PageModel
    {

        private readonly ApplicationDbContext _context;

        public IndexModel(ApplicationDbContext context)
        {
            _context = context;
        }

        [BindProperty]
        public Pais Pais { get; set; }

        public void OnGet()
        {

        }

        public Pais paisDesdeDb;
        public async Task OnPost()
        {
            if (ModelState.IsValid)
            {
                if (Pais.Nombre != "")
                {
                    paisDesdeDb = _context.Pais.FirstOrDefault(x => x.Nombre == Pais.Nombre);
                }
                if(paisDesdeDb == null || paisDesdeDb.Capital == "")
                {
                    paisDesdeDb = new Pais();
                    paisDesdeDb.Capital = "Country not found";
                }

            }
        }
    }
}
