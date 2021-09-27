require 'rspec'
require 'optparse'
require './lib/messages'
require './braille_test.rb'

describe Messages do

  it 'exists' do
    message = Messages.new(:test_file)

    expect(message).to be_a(Messages)
  end

  it 'reads number of english characters' do
    message = Messages.new(:test_file)

    expect(message.read_char_num).to eq("13")
  end

  it 'prints first message' do
    message = Messages.new(:test_file)

    expect(message.first_message).to eq("Created 'test_file' containing 13 characters")
  end

  it 'reads braille letter count' do
    message = Messages.new(:test_file)

    expect(message.read_braille_num).to eq(6)
  end

  it 'prints second message' do
    message = Messages.new(:test_file)

    expect(message.second_message).to eq("Created 'test_file' containing 6 characters.")
  end
end
