# Kutils 用法示例

本文件展示 Kutils 各工具模块的典型用法，便于开发者快速集成与测试。

---

```ruby
require 'kutils'
```

## 1. 字符串处理 Kutils::StringUtils

```ruby
puts Kutils::StringUtils.camelize('hello_world') # => HelloWorld
puts Kutils::StringUtils.underscore('HelloWorld') # => hello_world
puts Kutils::StringUtils.slugify('Hello Ruby!')   # => hello-ruby
```

## 2. 时间处理 Kutils::TimeUtils

```ruby
puts Kutils::TimeUtils.now_iso8601 # => 2025-01-01T12:00:00Z
puts Kutils::TimeUtils.human_duration(3661) # => 01:01:01
```

## 3. 文件与路径处理 Kutils::FileUtils

```ruby
File.write('foo.txt', 'bar')
puts Kutils::FileUtils.safe_read('foo.txt') # => bar
Kutils::FileUtils.mkdir_p('tmp/data')
```

## 4. 加解密/签名 Kutils::CryptoUtils

```ruby
puts Kutils::CryptoUtils.md5('abc') # => 900150983cd24fb0d6963f7d28e17f72
puts Kutils::CryptoUtils.hmac_sha256('data', 'key')
puts Kutils::CryptoUtils.base64_encode('hello') # => aGVsbG8=
```

## 5. 数组/Hash 工具 Kutils::ArrayUtils

```ruby
puts Kutils::ArrayUtils.deep_flatten([1, [2, [3]], 4]).inspect # => [1, 2, [3], 4]
puts Kutils::ArrayUtils.safe_map([1, 2]) { |x| x * 2 } # => [2, 4]
```

## 6. 验证工具 Kutils::Validator

```ruby
puts Kutils::Validator.required?('foo') # => true
puts Kutils::Validator.email?('foo@bar.com') # => true
```

## 7. 调试/日志 Kutils::DebugUtils

```ruby
Kutils::DebugUtils.log({foo: 1}, 'test')
```

## 8. DSL 支持 Kutils::DSLBuilder

```ruby
Kutils::DSLBuilder.new do
  task('deploy') { puts 'Deploying...' }
end
```

## 9. 格式化输出 Kutils::FormatUtils

```ruby
puts Kutils::FormatUtils.markdown_title('Hello') # => "# Hello\n\n"
puts Kutils::FormatUtils.color_text('foo', :red) # => 带红色的 foo
```

## 10. 版本号

```ruby
puts Kutils::VERSION # => "0.1.0"
```