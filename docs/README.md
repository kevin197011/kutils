# Ruby 通用工具类（Utils/Helper）库

> 本文档汇总了 Ruby 日常开发中常用的工具类/模块，便于快速集成、复用和扩展。

---

## 目录

1. [简介](#简介)
2. [工具类分类与示例](#工具类分类与示例)
   - [字符串处理（StringUtils）](#字符串处理stringutils)
   - [时间处理（TimeUtils）](#时间处理timeutils)
   - [文件与路径处理（FileUtils）](#文件与路径处理fileutils)
   - [HTTP 请求（HttpClient）](#http-请求httpclient)
   - [加解密/签名（CryptoUtils）](#加解密签名cryptoutils)
   - [数组/Hash 工具（ArrayUtils）](#数组hash-工具arrayutils)
   - [验证工具（Validator）](#验证工具validator)
   - [调试/日志（DebugUtils）](#调试日志debugutils)
   - [DSL 支持（DSLBuilder）](#dsl-支持dslbuilder)
   - [格式化输出（FormatUtils）](#格式化输出formatutils)
3. [项目结构建议](#项目结构建议)
4. [用法示例](#用法示例)
5. [扩展建议](#扩展建议)
6. [许可证](#许可证)

---

## 简介

本库旨在为 Ruby 项目提供一套高复用、易扩展的通用工具类，涵盖字符串、时间、文件、网络、加密、数据结构、验证、调试、DSL、格式化等常见场景，提升开发效率和代码质量。

---

## 工具类分类与示例

### 1. 字符串处理（StringUtils）

- 驼峰/下划线/slug 转换
- 文本清洗、格式化

```ruby
module StringUtils
  def self.camelize(str)
    str.split('_').map(&:capitalize).join
  end

  def self.underscore(str)
    str.gsub(/::/, '/').gsub(/([A-Z]+)([A-Z][a-z])/,'\\1_\\2').gsub(/([a-z\d])([A-Z])/,'\\1_\\2').tr("-", "_").downcase
  end

  def self.slugify(str)
    str.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end
end
```

### 2. 时间处理（TimeUtils）

- ISO8601 格式化
- 人性化时间间隔

```ruby
module TimeUtils
  def self.now_iso8601
    Time.now.utc.iso8601
  end

  def self.human_duration(seconds)
    mm, ss = seconds.divmod(60)
    hh, mm = mm.divmod(60)
    "%02d:%02d:%02d" % [hh, mm, ss]
  end
end
```

### 3. 文件与路径处理（FileUtils）

- 安全读写
- 目录创建

```ruby
module FileUtils
  def self.safe_read(path)
    File.exist?(path) ? File.read(path) : nil
  end

  def self.mkdir_p(path)
    Dir.mkdir(path) unless Dir.exist?(path)
  end
end
```
> 💡 Ruby 标准库自带 `FileUtils`，如有冲突可自定义命名。

### 4. HTTP 请求（HttpClient）

- 简化 GET/POST 请求
- 支持 JSON 解析

```ruby
require 'net/http'
require 'json'

module HttpClient
  def self.get_json(url)
    uri = URI(url)
    res = Net::HTTP.get_response(uri)
    JSON.parse(res.body)
  end
end
```

### 5. 加解密/签名（CryptoUtils）

- MD5、HMAC、Base64

```ruby
require 'digest'
require 'base64'
require 'openssl'

module CryptoUtils
  def self.md5(str)
    Digest::MD5.hexdigest(str)
  end

  def self.hmac_sha256(data, key)
    OpenSSL::HMAC.hexdigest("SHA256", key, data)
  end

  def self.base64_encode(str)
    Base64.strict_encode64(str)
  end
end
```

### 6. 数组/Hash 工具（ArrayUtils）

- 深度扁平化
- 安全 map

```ruby
module ArrayUtils
  def self.deep_flatten(arr)
    arr.flatten(1) while arr.any? { |a| a.is_a?(Array) }
    arr
  end

  def self.safe_map(arr, &block)
    (arr || []).map(&block)
  end
end
```

### 7. 验证工具（Validator）

- 必填、邮箱格式校验

```ruby
module Validator
  def self.required?(val)
    !val.nil? && val != ''
  end

  def self.email?(val)
    !!(val =~ /\A[^@\s]+@[^@\s]+\z/)
  end
end
```

### 8. 调试/日志（DebugUtils）

- 快速调试打印
- 结构化日志输出

```ruby
module DebugUtils
  def self.log(obj, label = nil)
    puts "==== #{label || 'DEBUG'} ===="
    pp obj
  end
end
```

### 9. DSL 支持（DSLBuilder）

- 元编程配置

```ruby
class DSLBuilder
  def initialize(&block)
    instance_eval(&block)
  end

  def task(name, &block)
    puts "Define task: #{name}"
    block.call
  end
end

# 使用示例：
# DSLBuilder.new do
#   task "deploy" { puts "Deploying..." }
# end
```

### 10. 格式化输出（FormatUtils）

- Markdown 标题、彩色文本

```ruby
module FormatUtils
  def self.markdown_title(title)
    "# #{title}\n\n"
  end

  def self.color_text(text, color)
    "\e[#{color_code(color)}m#{text}\e[0m"
  end

  def self.color_code(color)
    { red: 31, green: 32, yellow: 33, blue: 34 }[color] || 0
  end
end
```

---

## 项目结构建议

```
lib/
  utils/
    string_utils.rb
    time_utils.rb
    file_utils.rb
    crypto_utils.rb
    array_utils.rb
    validator.rb
    http_client.rb
    debug_utils.rb
    format_utils.rb
```

- 统一命名空间：`Utils::StringUtils.camelize(...)`
- 可通过 `include` 混入类中
- 推荐配合 RSpec 编写单元测试

---

## 用法示例

```ruby
require_relative 'lib/utils/string_utils'

puts Utils::StringUtils.camelize('hello_world') # => HelloWorld
puts Utils::StringUtils.slugify('Hello Ruby!')  # => hello-ruby

require_relative 'lib/utils/time_utils'
puts Utils::TimeUtils.now_iso8601
puts Utils::TimeUtils.human_duration(3661) # => 01:01:01
```

---

## 扩展建议

- 可封装为 Gem 发布
- 支持自动加载（如 Zeitwerk）
- 增加更多实用方法和类型扩展
- 集成 RuboCop 规范和 RSpec 测试
- 支持 Ruby 2.7+ 及更高版本

---

## 许可证

MIT License. © 2025 kk