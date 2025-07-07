# frozen_string_literal: true
require 'spec_helper'

describe FormatUtils do
  it 'markdown_title formats title' do
    expect(FormatUtils.markdown_title('Hello')).to eq("# Hello\n\n")
  end

  it 'color_text wraps text with ANSI code' do
    expect(FormatUtils.color_text('foo', :red)).to include("foo")
    expect(FormatUtils.color_text('foo', :red)).to include("\e[31m")
  end

  it 'color_code returns correct code' do
    expect(FormatUtils.color_code(:green)).to eq(32)
    expect(FormatUtils.color_code(:unknown)).to eq(0)
  end
end
