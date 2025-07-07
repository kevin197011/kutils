# frozen_string_literal: true
require 'spec_helper'

describe ArrayUtils do
  it 'deep_flatten flattens nested arrays' do
    expect(ArrayUtils.deep_flatten([1, [2, [3]], 4])).to eq([1, 2, [3], 4])
  end

  it 'safe_map maps array or returns empty array for nil' do
    expect(ArrayUtils.safe_map([1, 2]) { |x| x * 2 }).to eq([2, 4])
    expect(ArrayUtils.safe_map(nil) { |x| x }).to eq([])
  end
end
