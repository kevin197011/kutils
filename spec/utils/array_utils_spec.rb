# frozen_string_literal: true
require 'spec_helper'

describe Kutils::ArrayUtils do
  it 'deep_flatten flattens nested arrays' do
    expect(Kutils::ArrayUtils.deep_flatten([1, [2, [3]], 4])).to eq([1, 2, [3], 4])
  end

  it 'safe_map maps array or returns empty array for nil' do
    expect(Kutils::ArrayUtils.safe_map([1, 2]) { |x| x * 2 }).to eq([2, 4])
    expect(Kutils::ArrayUtils.safe_map(nil) { |x| x }).to eq([])
  end
end
