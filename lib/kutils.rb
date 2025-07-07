# frozen_string_literal: true

# Copyright (c) 2025 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

require 'zeitwerk'
require_relative 'utils/version'

module Kutils
  VERSION = ::Kutils::VERSION
end

loader = Zeitwerk::Loader.for_gem
loader.push_dir(File.expand_path('utils', __dir__))
loader.setup
