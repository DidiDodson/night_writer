require 'rspec'
require 'optparse'
require './lib/messages'
require './lib/output'
require './lib/reader_dictionary'

describe ReaderDictionary do
  it 'exists' do
    reader_dictionary = ReaderDictionary.new('braille0.txt')

    expect(reader_dictionary).to be_a(ReaderDictionary)
  end

  it 'has attributes' do
    reader_dictionary = ReaderDictionary.new('braille0.txt')

    expect(reader_dictionary.r_dictionary[["0.","..",".."]]).to eq("a")
  end

  it 'looks up braille' do
     reader_dictionary = ReaderDictionary.new('braille0.txt')

     expect(reader_dictionary.search_by_braille(["0.","..",".."])).to eq("a")
  end

  it 'reads English' do
    reader_dictionary = ReaderDictionary.new('braille0.txt')

    reader_dictionary.read

    expect(reader_dictionary.read).to be_a(Array)
  end

  xit 'translates' do
    reader_dictionary = ReaderDictionary.new('braille0.txt')

    reader_dictionary.read
    reader_dictionary.translate

    expect(reader_dictionary.translate).to eq(true)
  end
end
