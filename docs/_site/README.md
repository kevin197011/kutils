# KDoc - 极简黑白 DevOps 风格 Jekyll 文档主题

KDoc 是一款专为项目生成文档设计的 Jekyll 主题，极简黑白灰风格，支持顶部导航、左侧分组菜单、右侧浮动目录（TOC）、黑白主题切换，适合企业/开源项目文档、API 文档、团队知识库等场景。

## 主题特性
- 顶部导航栏（nav.yml 配置）
- 左侧分组菜单栏（sidebar.yml 配置）
- 右侧浮动目录（TOC，自动生成）
- 黑白主题切换，按钮在顶部右侧
- 响应式设计，移动端菜单可折叠
- 极简黑白灰配色，Font Awesome 图标
- 内容区卡片化，留白大，适合项目/团队文档

## 目录结构
```
.
├── _layouts/
│   └── default.html
├── _includes/
│   ├── header.html      # 顶部导航栏
│   ├── sidebar.html     # 左侧菜单栏
│   ├── toc.html         # 右侧目录
│   └── footer.html      # 页脚
├── _data/
│   ├── nav.yml          # 顶部导航配置
│   └── sidebar.yml      # 侧边栏配置
├── assets/
│   └── js/
│       └── kdoc.js      # 主题切换/TOC脚本
├── index.md             # 首页示例
├── guide/index.md       # 指南首页
├── guide/config.md      # 配置说明
├── guide/plugins.md     # 插件说明
├── api/index.md         # API 文档首页
├── api/example.md       # API 示例
└── README.md
```

## 顶部导航配置（_data/nav.yml）
```yaml
- title: 首页
  url: /
- title: 指南
  url: /guide/
- title: API
  url: /api/
- title: 博客
  url: /blog/
- title: 关于
  url: /about/
```

## 侧边栏配置（_data/sidebar.yml）
```yaml
- title: 快速开始
  url: /guide/
- title: 配置
  url: /guide/config/
- title: API 概览
  url: /api/
- title: 插件
  url: /guide/plugins/
```

## 使用方法
1. 将本主题文件复制到你的 Jekyll 项目对应目录。
2. 配置 `_data/nav.yml` 和 `_data/sidebar.yml`，自定义导航和侧边栏。
3. 页面 front matter 里使用 `layout: default`。
4. 启动 Jekyll (`bundle exec jekyll serve`) 预览效果。

## 主题切换
- 顶部右侧按钮可切换黑白主题，自动记忆。
- 支持 Tailwind CDN，dark: 前缀样式生效。

## 响应式
- 移动端顶部菜单可折叠，侧边栏自动隐藏。

## 适合场景
- 项目/开源文档
- API/SDK 文档
- 团队知识库
- DevOps/运维平台文档

---
如需进一步美化、菜单分组、搜索、首页定制等，欢迎提 issue！
