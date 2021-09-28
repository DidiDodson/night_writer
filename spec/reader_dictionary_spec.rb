require 'rspec'
require './lib/messages'
require './lib/output'
require './lib/reader_dictionary'

describe ReaderDictionary do
  it 'exists' do
    reader_dictionary = ReaderDictionary.new('braille.txt')

    expect(reader_dictionary).to be_a(ReaderDictionary)
  end

  it 'has attributes' do
    reader_dictionary = ReaderDictionary.new('braille.txt')

    expect(reader_dictionary.r_dictionary[["0.","..",".."]]).to eq("a")
  end
end
