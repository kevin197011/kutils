# frozen_string_literal: true
# Copyright (c) 2025 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

require 'pp'

module Kutils
  # DebugUtils provides quick debug print utilities.
  module DebugUtils
    # Pretty print object with optional label
    # @param obj [Object]
    # @param label [String, nil]
    # @return [void]
    def self.log(obj, label = nil)
      puts "==== #{label || 'DEBUG'} ===="
      pp obj
    end
  end
end
