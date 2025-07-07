# frozen_string_literal: true
# Copyright (c) 2025 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

module Kutils
  # ArrayUtils provides array flattening and safe mapping utilities.
  module ArrayUtils
    # Deeply flatten an array (1 level at a time)
    # @param arr [Array]
    # @return [Array]
    def self.deep_flatten(arr)
      arr.flatten(1) while arr.any? { |a| a.is_a?(Array) }
      arr
    end

    # Map array safely (nil returns empty array)
    # @param arr [Array, nil]
    # @yield [item]
    # @return [Array]
    def self.safe_map(arr, &block)
      (arr || []).map(&block)
    end
  end
end
