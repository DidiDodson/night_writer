require 'rspec'
require 'optparse'
require './lib/messages'
require './lib/output'
require './lib/writer_dictionary'
require './lib/convert'

describe Convert do
  it 'exists' do
    convert = Convert.new('braille.txt')

    expect(convert).to be_a Convert
  end

  it 'converts to braille' do
    convert = Convert.new('braille.txt')
    writer_dictionary = WriterDictionary.new('braille.txt')

    writer_dictionary.search_by_letter("e")
    writer_dictionary.read
    convert.translate

    expect(convert).to eq(2)
  end
end
