# frozen_string_literal: true
require 'spec_helper'

describe StringUtils do
  it 'camelize works' do
    expect(StringUtils.camelize('hello_world')).to eq('HelloWorld')
  end

  it 'underscore works' do
    expect(StringUtils.underscore('HelloWorld')).to eq('hello_world')
  end

  it 'slugify works' do
    expect(StringUtils.slugify('Hello Ruby!')).to eq('hello-ruby')
  end
end
