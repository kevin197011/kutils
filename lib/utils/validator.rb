# frozen_string_literal: true
# Copyright (c) 2025 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

module Kutils
  # Validator provides simple parameter validation utilities.
  module Validator
    # Check if value is present (not nil or empty string)
    # @param val [Object]
    # @return [Boolean]
    def self.required?(val)
      !val.nil? && val != ''
    end

    # Check if value is a valid email address
    # @param val [String]
    # @return [Boolean]
    def self.email?(val)
      !!(val =~ /\A[^@\s]+@[^@\s]+\z/)
    end
  end
end
