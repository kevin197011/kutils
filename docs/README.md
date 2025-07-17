# kutils 文档系统 · Ruby 极简工具库 + kdoc 主题

kutils 是一个现代、极简、自动化的 Ruby 工具库，专注于高复用、类型扩展和工程自动化体验。所有模块均以 `Kutils::` 命名空间发布，支持 Ruby 2.7+，内置丰富的实用方法（字符串、时间、文件、加密、数组、校验、调试、DSL、格式化等）。

本项目文档系统基于 [kdoc](https://github.com/kevin197011/kdoc) VitePress 风格 Jekyll 主题，支持顶部导航、分组侧边栏、右侧浮动 TOC、暗黑/明亮切换、绝对路径导航，适配 GitHub Pages 子目录部署。

---

## 🚀 文档导航
- [首页](/)
- [快速开始](/guide/)
- [用法指南](/guide/)
- [配置说明](/guide/config/)
- [插件扩展](/guide/plugins/)
- [API 文档](/api/)
- [API 示例](/api/example/)
- [关于主题](/about/)

> 所有导航均为绝对路径，适配 GitHub Pages 子目录部署。

---

## 🧑‍💻 快速开始

1. 安装 gem：
   ```sh
   gem install kutils
   # 或在 Gemfile 中添加 gem 'kutils'
   ```
2. 引入并使用：
   ```ruby
   require 'kutils'
   Kutils::StringUtils.camelize('hello_world') # => "HelloWorld"
   ```
3. 查看 [用法指南](/guide/) 获取更多示例。

---

## 📚 API 文档
- [API 文档首页](/api/)
- [API 示例](/api/example/)
- [YARD API 参考](/yardoc/)  （自动生成，支持暗黑/明亮切换）

---

## 🎨 主题与结构
- 采用 kdoc 极简 Ruby 红色调，VitePress 风格
- 顶部导航：`_data/nav.yml` 配置
- 分组侧边栏：`_data/sidebar.yml` 配置
- 右侧浮动 TOC 自动生成
- 响应式设计，移动端菜单可折叠
- 代码高亮：Prism.js
- 主题样式/脚本：`assets/` 目录
- 所有页面 front matter 建议：
  ```yaml
  ---
  layout: default
  title: 页面标题
  sidebar_group: 指南 # 或 API
  ---
  ```

---

## 🤝 贡献与反馈
- 欢迎 PR、Issue 参与贡献
- 代码规范：RuboCop + RSpec + YARD
- 文档规范：YARD + Jekyll + kdoc 主题
- CI/CD：GitHub Actions 自动测试、文档部署、安全扫描
- [关于主题](/about/) · [GitHub](https://github.com/你的仓库)

---

## 📄 License

- 本项目及文档均遵循 MIT 协议
- 代码与文档需保留原作者版权声明

---

> 本文档系统由 kutils + kdoc 主题驱动，支持 Ruby 极客与现代工程师的高效协作与知识沉淀。
