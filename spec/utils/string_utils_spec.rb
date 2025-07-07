# frozen_string_literal: true
require 'spec_helper'

describe Kutils::StringUtils do
  it 'camelize works' do
    expect(Kutils::StringUtils.camelize('hello_world')).to eq('HelloWorld')
  end

  it 'underscore works' do
    expect(Kutils::StringUtils.underscore('HelloWorld')).to eq('hello_world')
  end

  it 'slugify works' do
    expect(Kutils::StringUtils.slugify('Hello Ruby!')).to eq('hello-ruby')
  end
end
