require 'rspec'
require 'optparse'
require './lib/messages'
require './lib/output'
require './lib/writer_dictionary'

describe WriterDictionary do
  it 'exists' do
    writer_dictionary = WriterDictionary.new('tester.txt')

    expect(writer_dictionary).to be_a(WriterDictionary)
  end

  it 'has attributes' do
    writer_dictionary = WriterDictionary.new('tester.txt')

    expect(writer_dictionary.dictionary[:h]).to eq("0.\n00\n..")
  end

  it 'looks up letters' do
     writer_dictionary = WriterDictionary.new('tester.txt')

     expected = "0.\n.0\n.."

     expect(writer_dictionary.search_by_letter("e")).to eq(expected)
  end

  it 'reads English' do
    writer_dictionary = WriterDictionary.new('tester.txt')

    writer_dictionary.read

    expect('messages.txt'.length).to eq(12)
  end

  it 'translates to Braille' do
    writer_dictionary = WriterDictionary.new('tester.txt')

    writer_dictionary.translate

    expect('tester.txt'.length).to eq(10)
  end
end
