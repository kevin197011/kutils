# frozen_string_literal: true
# Copyright (c) 2025 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

require 'logger'
require 'json'
require 'securerandom'
require 'time'

module Kutils
  # KLogger provides structured logging with trace_id and context support.
  class KLogger
    LEVELS = %i[debug info warn error fatal unknown].freeze

    attr_accessor :service, :trace_id

    def initialize(service: 'kutils', level: :info)
      @service = service
      @trace_id = nil
      @logger = ::Logger.new($stdout)
      @logger.level = ::Logger.const_get(level.to_s.upcase)
      @logger.formatter = proc { |severity, datetime, _progname, msg|
        msg.is_a?(String) && msg.strip.start_with?('{') ? msg + "\n" : { timestamp: datetime.utc.iso8601, level: severity, service: @service, message: msg, trace_id: current_trace_id }.to_json + "\n"
      }
    end

    LEVELS.each do |level|
      define_method(level) do |message, context = {}|
        log(level, message, context)
      end
    end

    def with_trace_id(trace_id)
      @trace_id = trace_id
      self
    end

    def current_trace_id
      @trace_id || ENV['TRACE_ID'] || SecureRandom.hex(8)
    end

    private

    def log(level, message, context = {})
      entry = {
        timestamp: Time.now.utc.iso8601,
        level: level.to_s.upcase,
        service: @service,
        message: message,
        trace_id: current_trace_id
      }
      entry[:context] = context unless context.empty?
      @logger.send(level, entry.to_json)
    end
  end
end
