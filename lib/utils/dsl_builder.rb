# frozen_string_literal: true
# Copyright (c) 2025 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

module Kutils
  # DSLBuilder provides a simple DSL for configuration or scripting.
  class DSLBuilder
    # @yield DSL block
    def initialize(&block)
      instance_eval(&block) if block_given?
    end

    # Define a task with a name and block
    # @param name [String]
    # @yield Block to execute for the task
    def task(name, &block)
      puts "Define task: #{name}"
      block.call if block_given?
    end
  end
end
