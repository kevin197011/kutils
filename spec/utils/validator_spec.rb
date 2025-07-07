# frozen_string_literal: true
require 'spec_helper'

describe Kutils::Validator do
  it 'required? returns true for present values' do
    expect(Kutils::Validator.required?('foo')).to be true
    expect(Kutils::Validator.required?(1)).to be true
  end

  it 'required? returns false for nil or empty string' do
    expect(Kutils::Validator.required?(nil)).to be false
    expect(Kutils::Validator.required?('')).to be false
  end

  it 'email? validates email format' do
    expect(Kutils::Validator.email?('foo@bar.com')).to be true
    expect(Kutils::Validator.email?('bad-email')).to be false
  end
end
