---
layout: default
title: 快速开始
sidebar_group: 指南
---

# 快速开始

1. 克隆本项目或复制主题文件到你的 Jekyll 项目。
2. 配置 `_data/nav.yml` 和 `_data/sidebar.yml`：

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

3. 新建文档，front matter 里用如下内容：

```yaml
---
layout: default
title: 示例文档
sidebar_group: 指南
---
```

4. 启动 Jekyll 预览效果：

```bash
bundle exec jekyll serve
```

[配置说明](/guide/config/)