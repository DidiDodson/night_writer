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
end
