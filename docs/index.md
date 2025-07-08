---
layout: default
title: kutils Wiki
---

# kutils Wiki

> Ruby 极客工具库 · 技术文档

---

## 📚 主要导航

- [用法示例 USAGE](/kutils/docs/USAGE)
- [API 参考 API](/kutils/docs/API)
- [返回项目首页](https://github.com/kevin197011/kutils)

---

## 主要模块

- [StringUtils](/kutils/docs/API#kutilsstringutils)
- [TimeUtils](/kutils/docs/API#kutilstimeutils)
- [FileUtils](/kutils/docs/API#kutilsfileutils)
- [CryptoUtils](/kutils/docs/API#kutilscryptoutils)
- [ArrayUtils](/kutils/docs/API#kutilsarrayutils)
- [Validator](/kutils/docs/API#kutilsvalidator)
- [DebugUtils](/kutils/docs/API#kutilsdebugutils)
- [DSLBuilder](/kutils/docs/API#kutilsdslbuilder)
- [FormatUtils](/kutils/docs/API#kutilsformatutils)

---

## 📝 最新文档

<ul>
  {% for post in site.posts limit:5 %}
    <li><a href="{{ post.url }}">{{ post.title }}</a> <small>{{ post.date | date: '%Y-%m-%d' }}</small></li>
  {% endfor %}
</ul>

---

*自动生成目录见页面右侧（或移动端顶部）*