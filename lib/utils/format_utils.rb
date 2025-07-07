# frozen_string_literal: true
# Copyright (c) 2025 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

module Kutils
  # FormatUtils provides formatting helpers for markdown and colored text.
  module FormatUtils
    # Format a markdown title
    # @param title [String]
    # @return [String]
    def self.markdown_title(title)
      "# #{title}\n\n"
    end

    # Colorize text in terminal
    # @param text [String]
    # @param color [Symbol]
    # @return [String]
    def self.color_text(text, color)
      "\e[#{color_code(color)}m#{text}\e[0m"
    end

    # Get ANSI color code
    # @param color [Symbol]
    # @return [Integer]
    def self.color_code(color)
      { red: 31, green: 32, yellow: 33, blue: 34 }[color] || 0
    end
  end
end
