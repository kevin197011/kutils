# frozen_string_literal: true
require 'spec_helper'

describe Kutils::TimeUtils do
  it 'now_iso8601 returns ISO8601 string' do
    expect(Kutils::TimeUtils.now_iso8601).to match(/\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}/)
  end

  it 'human_duration formats seconds' do
    expect(Kutils::TimeUtils.human_duration(3661)).to eq('01:01:01')
    expect(Kutils::TimeUtils.human_duration(59)).to eq('00:00:59')
    expect(Kutils::TimeUtils.human_duration(0)).to eq('00:00:00')
  end
end
