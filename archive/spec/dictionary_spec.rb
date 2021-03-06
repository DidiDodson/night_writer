
require 'rspec'
require 'optparse'
require './lib/messages'
require './lib/output'
require './lib/dictionary'

describe Dictionary do
  it 'exists' do
    dictionary = Dictionary.new('braille.txt')

    expect(dictionary).to be_a(Dictionary)
  end

  it 'has attributes' do
    dictionary = Dictionary.new('braille.txt')

    expect(dictionary.dictionary[:h]).to eq("0.\n00\n..")
  end

  it 'looks up letters' do
     dictionary = Dictionary.new('braille.txt')

     expected = "0.\n.0\n.."

     expect(dictionary.search_by_letter("e")).to eq(expected)
  end

  it 'reads to Braille' do
    dictionary = Dictionary.new('braille.txt')

    dictionary.read_conv_write

    expect(dictionary.arr1).to eq([["0.", "..", ".."], ["..", "..", ".."], ["0.", "0.", ".."], ["..", "..", ".."], ["00", "..", ".."]])
  end
end
