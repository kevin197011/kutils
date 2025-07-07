# frozen_string_literal: true
# Copyright (c) 2025 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

require 'digest'
require 'base64'
require 'openssl'

module Kutils
  # CryptoUtils provides common hash and encoding utilities.
  module CryptoUtils
    # Calculate MD5 hex digest
    # @param str [String]
    # @return [String]
    def self.md5(str)
      Digest::MD5.hexdigest(str)
    end

    # Calculate HMAC-SHA256 hex digest
    # @param data [String]
    # @param key [String]
    # @return [String]
    def self.hmac_sha256(data, key)
      OpenSSL::HMAC.hexdigest('SHA256', key, data)
    end

    # Base64 encode string
    # @param str [String]
    # @return [String]
    def self.base64_encode(str)
      Base64.strict_encode64(str)
    end
  end
end
