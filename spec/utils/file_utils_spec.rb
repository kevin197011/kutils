# frozen_string_literal: true
require 'spec_helper'
require 'tmpdir'

describe Kutils::SafeFileUtils do
  it 'safe_read returns nil for non-existent file' do
    expect(Kutils::SafeFileUtils.safe_read('no_such_file.txt')).to be_nil
  end

  it 'safe_read returns content for existing file' do
    file = 'tmp_test.txt'
    File.write(file, 'hello')
    expect(Kutils::SafeFileUtils.safe_read(file)).to eq('hello')
    File.delete(file)
  end

  it 'mkdir_p creates directory if not exists' do
    Dir.mktmpdir do |dir|
      subdir = File.join(dir, 'foo')
      expect(Dir.exist?(subdir)).to be false
      Kutils::SafeFileUtils.mkdir_p(subdir)
      expect(Dir.exist?(subdir)).to be true
    end
  end
end
