# frozen_string_literal: true
require 'spec_helper'

describe CryptoUtils do
  it 'md5 returns correct hash' do
    expect(CryptoUtils.md5('abc')).to eq('900150983cd24fb0d6963f7d28e17f72')
  end

  it 'hmac_sha256 returns correct digest' do
    expect(CryptoUtils.hmac_sha256('data', 'key')).to eq('5d5c2ee59b6b2c5be9c9ff27169d0b94e2b1e1b8b1a6a0b6c1c1b1e1b1e1b1e1')
  end

  it 'base64_encode encodes string' do
    expect(CryptoUtils.base64_encode('hello')).to eq('aGVsbG8=')
  end
end
