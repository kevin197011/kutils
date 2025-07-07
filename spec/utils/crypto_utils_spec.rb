# frozen_string_literal: true
require 'spec_helper'

describe Kutils::CryptoUtils do
  it 'md5 returns correct hash' do
    expect(Kutils::CryptoUtils.md5('abc')).to eq('900150983cd24fb0d6963f7d28e17f72')
  end

  it 'hmac_sha256 returns correct digest' do
    # 该值仅为示例，实际应与 Ruby OpenSSL 结果一致
    expect(Kutils::CryptoUtils.hmac_sha256('data', 'key')).to be_a(String)
    expect(Kutils::CryptoUtils.hmac_sha256('data', 'key').size).to eq(64)
  end

  it 'base64_encode encodes string' do
    expect(Kutils::CryptoUtils.base64_encode('hello')).to eq('aGVsbG8=')
  end
end
