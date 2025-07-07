# frozen_string_literal: true
require 'spec_helper'

describe Kutils::DebugUtils do
  it 'log prints object without error' do
    expect { Kutils::DebugUtils.log({foo: 1}, 'test') }.not_to raise_error
  end
end
