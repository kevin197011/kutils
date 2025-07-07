# frozen_string_literal: true
# Copyright (c) 2025 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

require 'time'

module Kutils
  # TimeUtils provides time formatting and duration utilities.
  module TimeUtils
    # Get current UTC time in ISO8601 format
    # @return [String]
    # @example
    #   Kutils::TimeUtils.now_iso8601 #=> '2025-01-01T12:00:00Z'
    def self.now_iso8601
      Time.now.utc.iso8601
    end

    # Format seconds as HH:MM:SS
    # @param seconds [Integer]
    # @return [String]
    # @example
    #   Kutils::TimeUtils.human_duration(3661) #=> '01:01:01'
    def self.human_duration(seconds)
      mm, ss = seconds.divmod(60)
      hh, mm = mm.divmod(60)
      format('%02d:%02d:%02d', hh, mm, ss)
    end
  end
end
