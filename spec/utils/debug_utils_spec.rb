# frozen_string_literal: true
require 'spec_helper'
require 'stringio'
require_relative '../../lib/utils/klogger'

describe Kutils::KLogger do
  let(:output) { StringIO.new }
  let(:logger) { described_class.new(service: 'test-service', level: :debug) }

  before do
    allow($stdout).to receive(:write) { |msg| output.write(msg) }
  end

  it 'logs info message as JSON' do
    logger.info('hello', user_id: 1)
    output.rewind
    log = JSON.parse(output.string.lines.first)
    expect(log['level']).to eq('INFO')
    expect(log['service']).to eq('test-service')
    expect(log['message']).to eq('hello')
    expect(log['context']).to eq({ 'user_id' => 1 })
  end

  it 'logs error message' do
    logger.error('fail', error: 'bad')
    output.rewind
    log = JSON.parse(output.string.lines.first)
    expect(log['level']).to eq('ERROR')
    expect(log['message']).to eq('fail')
    expect(log['context']).to eq({ 'error' => 'bad' })
  end

  it 'supports debug/warn/fatal/unknown' do
    logger.debug('debug')
    logger.warn('warn')
    logger.fatal('fatal')
    logger.unknown('unknown')
    output.rewind
    levels = output.string.lines.map { |l| JSON.parse(l)['level'] }
    expect(levels).to include('DEBUG', 'WARN', 'FATAL', 'UNKNOWN')
  end

  it 'supports custom trace_id' do
    logger.with_trace_id('abc123').info('msg')
    output.rewind
    log = JSON.parse(output.string.lines.first)
    expect(log['trace_id']).to eq('abc123')
  end
end
