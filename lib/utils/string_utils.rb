# frozen_string_literal: true
# Copyright (c) 2025 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

module Kutils
  # StringUtils provides string format conversion and cleaning utilities.
  module StringUtils
    # Convert snake_case to CamelCase
    # @param str [String]
    # @return [String]
    # @example
    #   Kutils::StringUtils.camelize('hello_world') #=> 'HelloWorld'
    def self.camelize(str)
      str.split('_').map(&:capitalize).join
    end

    # Convert CamelCase or kebab-case to snake_case
    # @param str [String]
    # @return [String]
    # @example
    #   Kutils::StringUtils.underscore('HelloWorld') #=> 'hello_world'
    def self.underscore(str)
      str.gsub(/::/, '/').gsub(/([A-Z]+)([A-Z][a-z])/,'\\1_\\2').gsub(/([a-z\d])([A-Z])/,'\\1_\\2').tr("-", "_").downcase
    end

    # Convert string to URL slug (lowercase, dash-separated, alphanumeric)
    # @param str [String]
    # @return [String]
    # @example
    #   Kutils::StringUtils.slugify('Hello Ruby!') #=> 'hello-ruby'
    def self.slugify(str)
      str.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    end
  end
end
