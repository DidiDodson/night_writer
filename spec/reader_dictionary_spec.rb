require 'rspec'
require 'optparse'
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

  it 'looks up braille' do
     reader_dictionary = ReaderDictionary.new('braille.txt')

     expect(reader_dictionary.search_by_braille(["0.","..",".."])).to eq("a")
  end

  it 'reads English' do
    reader_dictionary = ReaderDictionary.new('braille.txt')

    reader_dictionary.read

    expect(reader_dictionary.read).to be_a(Array)
    expect(reader_dictionary.read.count).to eq(45)
  end
end
