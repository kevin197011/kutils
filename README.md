# kutils

[![Gem Version](https://img.shields.io/gem/v/kutils)](https://rubygems.org/gems/kutils)
[![CI](https://github.com/kevin197011/kutils/actions/workflows/docs.yml/badge.svg)](https://github.com/kevin197011/kutils/actions/workflows/docs.yml)

> Ruby 通用工具库 —— 统一命名空间、极简高效、自动化工程最佳实践

---

## 项目简介

Kutils 是一个现代 Ruby 通用工具库，涵盖字符串、时间、文件、加解密、数组、验证、调试、DSL、格式化等常用场景，全部模块统一挂载于 `Kutils` 命名空间，极易集成与扩展。支持自动化测试、文档、CI/CD、安全扫描与 Gem 发布。

---

## 特性

- 统一命名空间：`Kutils::模块名.方法`
- 覆盖常用开发场景（字符串、时间、文件、加密、数组、验证等）
- 代码与文档，支持黑白主题切换
- 自动化测试、代码规范、CI/CD、文档部署、安全扫描
- 支持 Ruby 2.7+，兼容 Ruby 3.x
- 可作为 Gem 直接集成

---

## 安装

```ruby
git clone https://github.com/kevin197011/kutils.git
cd kutils
bundle install
```

或在你的 Gemfile 中添加（发布后）：

```ruby
gem 'kutils'
```

---

## 用法示例

```ruby
require 'kutils'

puts Kutils::StringUtils.camelize('hello_world') # => HelloWorld
puts Kutils::TimeUtils.now_iso8601
puts Kutils::FileUtils.safe_read('foo.txt')
puts Kutils::CryptoUtils.md5('abc')
puts Kutils::ArrayUtils.deep_flatten([[1], [2]])
puts Kutils::Validator.email?('foo@bar.com')
Kutils::DebugUtils.log({foo: 1})
Kutils::DSLBuilder.new { task('deploy') { puts 'Deploying...' } }
puts Kutils::FormatUtils.markdown_title('Hello')
```

更多用法见 [docs/USAGE.md](docs/USAGE.md)

---

## API 文档

- [API 参考 (Markdown)](docs/API.md)

---

## 测试与质量保障

- RSpec 单元测试覆盖所有模块
- RuboCop 代码规范
- GitHub Actions 自动化测试、文档部署、安全扫描
- Bundler Audit & Dependabot 依赖安全

本地运行：

```sh
bundle exec rspec      # 运行所有测试
bundle exec rubocop    # 代码规范检查
rake yard              # 生成 API 文档
```

---

## 贡献指南

欢迎 PR、Issue 及建议！

1. Fork & 新建分支
2. 保持代码风格与注释一致
3. 补充/完善测试
4. 提交 PR 前确保 CI 通过

---

## 许可证

MIT License. © 2025 kk
