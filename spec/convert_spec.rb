require 'rspec'
require 'optparse'
require './lib/messages'
require './lib/output'
require './lib/dictionary'
require './lib/process'

describe Convert do
  it 'exists' do
    convert = Convert.new

    expect(convert).to be_a Convert
  end
end
