# frozen_string_literal: true
# Copyright (c) 2025 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

module Kutils
  # SafeFileUtils provides safe file and directory operations.
  module SafeFileUtils
    # Safely read file content if file exists
    # @param path [String]
    # @return [String, nil]
    # @example
    #   Kutils::SafeFileUtils.safe_read('foo.txt')
    def self.safe_read(path)
      File.exist?(path) ? File.read(path) : nil
    end

    # Create directory if not exists
    # @param path [String]
    # @return [void]
    # @example
    #   Kutils::SafeFileUtils.mkdir_p('tmp/data')
    def self.mkdir_p(path)
      Dir.mkdir(path) unless Dir.exist?(path)
    end
  end
end
