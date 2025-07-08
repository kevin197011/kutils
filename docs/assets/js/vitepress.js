// 主题切换
(function() {
  const btn = document.getElementById('theme-toggle');
  if (!btn) return;
  btn.onclick = function() {
    document.body.classList.toggle('dark');
    localStorage.setItem('vp-theme', document.body.classList.contains('dark') ? 'dark' : 'light');
  };
  if (localStorage.getItem('vp-theme') === 'dark') {
    document.body.classList.add('dark');
  }
})();

// TOC 自动生成
(function() {
  const toc = document.getElementById('toc-list');
  if (!toc) return;
  const headers = document.querySelectorAll('.vp-article h2, .vp-article h3');
  headers.forEach(function(h) {
    const li = document.createElement('li');
    const a = document.createElement('a');
    a.textContent = h.textContent;
    a.href = '#' + h.id;
    li.appendChild(a);
    toc.appendChild(li);
  });
})();