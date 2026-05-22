// ===============================================================
// Estudio - script principal
// - Búsqueda/filtro sobre las cards (recyclerView)
// - Resaltado activo en el TOC al hacer scroll en páginas de apuntes
// ===============================================================

document.addEventListener('DOMContentLoaded', () => {

  // ---------- Búsqueda en la home ----------
  const searchInput = document.querySelector('#search-input');
  const cards = document.querySelectorAll('.cards-grid .card');

  if (searchInput && cards.length) {
    searchInput.addEventListener('input', e => {
      const q = e.target.value.toLowerCase().trim();
      cards.forEach(card => {
        const txt = card.textContent.toLowerCase();
        card.style.display = txt.includes(q) ? '' : 'none';
      });
    });
  }

  // ---------- TOC activo al hacer scroll ----------
  const tocLinks = document.querySelectorAll('.toc a[href^="#"]');
  const sections = document.querySelectorAll('.content section[id]');

  if (tocLinks.length && sections.length) {
    const observer = new IntersectionObserver(entries => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          const id = entry.target.id;
          tocLinks.forEach(a => {
            a.classList.toggle('active', a.getAttribute('href') === '#' + id);
          });
        }
      });
    }, { rootMargin: '-30% 0px -60% 0px' });

    sections.forEach(s => observer.observe(s));
  }

});
