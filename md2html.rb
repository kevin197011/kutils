#!/usr/bin/env ruby
# frozen_string_literal: true

# Copyright (c) 2025 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

require 'kramdown'
require 'rouge'
require 'rouge/plugins/redcarpet'

# 极客风格 CSS
GEEK_CSS = <<~CSS
  body {
    background: #181a1b;
    color: #e0e0e0;
    font-family: 'Fira Mono', 'Consolas', 'Menlo', 'monospace', 'SF Mono', monospace;
    margin: 0 auto;
    max-width: 800px;
    padding: 2em 1em;
    line-height: 1.7;
  }
  h1, h2, h3, h4, h5, h6 {
    color: #7fff00;
    font-family: inherit;
    border-bottom: 1px solid #222;
    margin-top: 2em;
    margin-bottom: 1em;
  }
  pre, code {
    background: #222;
    color: #7fff00;
    font-family: inherit;
    border-radius: 4px;
  }
  pre {
    padding: 1em;
    overflow-x: auto;
    margin: 1.5em 0;
  }
  code {
    padding: 0.2em 0.4em;
    font-size: 0.98em;
  }
  a {
    color: #00e0e0;
    text-decoration: underline;
  }
  blockquote {
    border-left: 4px solid #7fff00;
    margin: 1em 0;
    padding: 0.5em 1em;
    color: #b0ffb0;
    background: #202322;
  }
  table {
    border-collapse: collapse;
    width: 100%;
    margin: 1.5em 0;
  }
  th, td {
    border: 1px solid #333;
    padding: 0.5em 1em;
  }
  th {
    background: #222;
    color: #7fff00;
  }
  tr:nth-child(even) {
    background: #232323;
  }
CSS

# 读取参数
input = ARGV[0] || (puts('用法: ruby md2html.rb input.md [output.html]')
                    exit 1)
output = ARGV[1]

unless File.exist?(input)
  puts "文件不存在: #{input}"
  exit 1
end

markdown = File.read(input)

# Kramdown + Rouge 渲染
html = Kramdown::Document.new(markdown, input: 'GFM', syntax_highlighter: 'rouge').to_html

# 包裹极客风格 HTML
result = <<~HTML
  <!DOCTYPE html>
  <html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Markdown Preview</title>
    <style>
      #{GEEK_CSS}
      #{Rouge::Themes::ThankfulEyes.render(scope: '.highlight')}
    </style>
  </head>
  <body>
    #{html}
  </body>
  </html>
HTML

output = "#{input}.html" if output.nil?

File.write(output, result)
puts "已生成: #{output}"
