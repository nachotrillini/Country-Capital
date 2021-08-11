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
    public class DeleteModel : PageModel
    {
        private readonly ApplicationDbContext _context;

        public DeleteModel(ApplicationDbContext context)
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
                var paisDesdeDb = await _context.Pais.FindAsync(Pais.Id);
                if(paisDesdeDb == null)
                {
                    return NotFound();
                }
                _context.Pais.Remove(paisDesdeDb);

                await _context.SaveChangesAsync();
                return RedirectToPage("Index");

        }
    }
}

