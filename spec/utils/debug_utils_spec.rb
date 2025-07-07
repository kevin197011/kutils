# frozen_string_literal: true
require 'spec_helper'

describe DebugUtils do
  it 'log prints object without error' do
    expect { DebugUtils.log({foo: 1}, 'test') }.not_to raise_error
  end
end
