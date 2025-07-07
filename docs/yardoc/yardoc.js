// 主题切换脚本 for YARD API docs
(function() {
  const THEME_KEY = 'yard-theme';
  const root = document.documentElement;

  function setTheme(theme) {
    if (theme === 'dark') {
      root.classList.add('dark');
      root.classList.remove('light');
    } else {
      root.classList.add('light');
      root.classList.remove('dark');
    }
    localStorage.setItem(THEME_KEY, theme);
  }

  function getSystemTheme() {
    return window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light';
  }

  function getSavedTheme() {
    return localStorage.getItem(THEME_KEY);
  }

  function toggleTheme() {
    const current = root.classList.contains('dark') ? 'dark' : 'light';
    setTheme(current === 'dark' ? 'light' : 'dark');
  }

  // 初始化
  const saved = getSavedTheme();
  setTheme(saved || getSystemTheme());

  // 按钮
  let btn = document.querySelector('.theme-toggle');
  if (!btn) {
    btn = document.createElement('button');
    btn.className = 'theme-toggle';
    btn.innerText = '切换主题';
    document.body.appendChild(btn);
  }
  btn.onclick = toggleTheme;
})();