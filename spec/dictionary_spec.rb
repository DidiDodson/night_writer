require 'rspec'
require 'optparse'
require './lib/messages'
require './lib/output'
require './lib/dictionary'

describe Dictionary do
  it 'exists' do
    dictionary = Dictionary.new

    expect(dictionary).to be_a(Dictionary)
  end

  it 'has attributes' do
    dictionary = Dictionary.new

    expect(dictionary.dict[:h]).to eq("0.\n00\n..")
  end

  it 'looks up letters' do
     dictionary = Dictionary.new

     expected = "0.\n.0\n.."

     expect(dictionary.search_by_letter("e")).to eq(expected)
  end

  it 'reads english, converts' do
    dictionary = Dictionary.new

    dictionary.read_conv

    expect("braille.txt".length).to eq(11)
  end
end
