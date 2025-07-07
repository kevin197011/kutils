# frozen_string_literal: true
require 'spec_helper'

describe Validator do
  it 'required? returns true for present values' do
    expect(Validator.required?('foo')).to be true
    expect(Validator.required?(1)).to be true
  end

  it 'required? returns false for nil or empty string' do
    expect(Validator.required?(nil)).to be false
    expect(Validator.required?('')).to be false
  end

  it 'email? validates email format' do
    expect(Validator.email?('foo@bar.com')).to be true
    expect(Validator.email?('bad-email')).to be false
  end
end
