require 'rspec'
require 'optparse'
# require './lib/night_writer'
require './lib/messages'

describe Messages do
  it 'exists' do
    message = Messages.new('braille.txt')

    expect(message).to be_a(Messages)
  end

  it 'prints first message' do
    message = Messages.new('braille.txt')

    expect(message.first_message).to eq("Created 'braille.txt' containing 5 characters")
  end

  it 'reads number of characters' do
    message = Messages.new('braille.txt')

    expect(message.read_char_num).to eq("5")
  end
end
