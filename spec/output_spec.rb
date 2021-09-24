require 'rspec'
require 'optparse'
require './lib/messages'
require './lib/output'

describe Output do
  it 'exists' do
    output = Output.new

    expect(output).to be_a(Output)
  end
end
