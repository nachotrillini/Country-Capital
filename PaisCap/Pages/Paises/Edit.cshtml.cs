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
    public class EditModel : PageModel
    {
        private readonly ApplicationDbContext _context;

        public EditModel(ApplicationDbContext context)
        {
            _context = context;
        }

        [BindProperty]
        public Pais Pais { get; set; }

        public async void OnGet(int id)
        {
            Pais = await _context.Pais.FindAsync(id);
        }

        public async Task<IActionResult> OnPost()
        {
            if (ModelState.IsValid)
            {

                var paisDesdeDb = await _context.Pais.FindAsync(Pais.Id);
                paisDesdeDb.Nombre = Pais.Nombre;
                paisDesdeDb.Capital = Pais.Capital;

                await _context.SaveChangesAsync();
                return RedirectToPage("Index");
            }
            else
            {
                return RedirectToPage();
            }
        }
    }
}

