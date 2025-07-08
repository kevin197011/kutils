---
layout: default
title: API 参考
---

# API 参考

* TOC
{:toc}

本文件自动汇总 Kutils 各工具模块的公开方法、参数、返回值及简要说明，便于开发者查阅。

---

## Kutils::StringUtils

- `Kutils::StringUtils.camelize(str)`
  - 参数：`str` [String] - 下划线字符串
  - 返回：CamelCase 字符串 [String]
  - 说明：下划线转驼峰

- `Kutils::StringUtils.underscore(str)`
  - 参数：`str` [String] - 驼峰或 kebab 字符串
  - 返回：snake_case 字符串 [String]
  - 说明：驼峰/短横线转下划线

- `Kutils::StringUtils.slugify(str)`
  - 参数：`str` [String]
  - 返回：URL slug 字符串 [String]
  - 说明：转为小写、短横线、去除特殊字符

---

## Kutils::TimeUtils

- `Kutils::TimeUtils.now_iso8601`
  - 返回：当前 UTC 时间的 ISO8601 字符串 [String]
  - 说明：获取当前时间

- `Kutils::TimeUtils.human_duration(seconds)`
  - 参数：`seconds` [Integer]
  - 返回：HH:MM:SS 格式字符串 [String]
  - 说明：秒数转人类可读时长

---

## Kutils::FileUtils

- `Kutils::FileUtils.safe_read(path)`
  - 参数：`path` [String]
  - 返回：文件内容 [String] 或 nil
  - 说明：安全读取文件

- `Kutils::FileUtils.mkdir_p(path)`
  - 参数：`path` [String]
  - 返回：无
  - 说明：目录不存在时自动创建

---

## Kutils::CryptoUtils

- `Kutils::CryptoUtils.md5(str)`
  - 参数：`str` [String]
  - 返回：MD5 十六进制摘要 [String]

- `Kutils::CryptoUtils.hmac_sha256(data, key)`
  - 参数：`data` [String], `key` [String]
  - 返回：HMAC-SHA256 十六进制摘要 [String]

- `Kutils::CryptoUtils.base64_encode(str)`
  - 参数：`str` [String]
  - 返回：Base64 编码字符串 [String]

---

## Kutils::ArrayUtils

- `Kutils::ArrayUtils.deep_flatten(arr)`
  - 参数：`arr` [Array]
  - 返回：扁平化数组 [Array]

- `Kutils::ArrayUtils.safe_map(arr) { |item| ... }`
  - 参数：`arr` [Array, nil]
  - 返回：映射后的数组 [Array]
  - 说明：nil 时返回空数组

---

## Kutils::Validator

- `Kutils::Validator.required?(val)`
  - 参数：`val` [Object]
  - 返回：是否非空 [Boolean]

- `Kutils::Validator.email?(val)`
  - 参数：`val` [String]
  - 返回：是否为合法邮箱 [Boolean]

---

## Kutils::DebugUtils

- `Kutils::DebugUtils.log(obj, label = nil)`
  - 参数：`obj` [Object], `label` [String, nil]
  - 返回：无
  - 说明：结构化打印对象

---

## Kutils::DSLBuilder

- `Kutils::DSLBuilder.new { ... }`
  - 用法：Kutils::DSLBuilder.new do; task('name') { ... }; end
  - 说明：自定义 DSL 配置

- `task(name) { ... }`
  - 参数：`name` [String]
  - 返回：无
  - 说明：定义并执行任务

---

## Kutils::FormatUtils

- `Kutils::FormatUtils.markdown_title(title)`
  - 参数：`title` [String]
  - 返回：Markdown 标题字符串 [String]

- `Kutils::FormatUtils.color_text(text, color)`
  - 参数：`text` [String], `color` [Symbol]
  - 返回：带 ANSI 颜色码的字符串 [String]

- `Kutils::FormatUtils.color_code(color)`
  - 参数：`color` [Symbol]
  - 返回：ANSI 颜色码 [Integer]

---

## Kutils::VERSION

- `Kutils::VERSION`
  - 返回：当前库版本号 [String]