# frozen_string_literal: true
require 'spec_helper'

describe Kutils::DSLBuilder do
  it 'defines and runs a task' do
    output = StringIO.new
    $stdout = output
    builder = Kutils::DSLBuilder.new do
      task('deploy') { puts 'Deploying...' }
    end
    $stdout = STDOUT
    expect(output.string).to include('Define task: deploy')
    expect(output.string).to include('Deploying...')
  end
end
