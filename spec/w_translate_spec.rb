require 'rspec'
require 'optparse'
require './lib/messages'
require './lib/output'
require './lib/writer_dictionary'
require './w_translate'

describe Translate do
  it 'exists' do
    translate2 = Translate.new('messages.txt')

    expect(translate2).to be_a(Translate)
  end

  it 'has attributes' do
    translate2 = Translate.new('messages.txt')

    expect(translate2.dictionary.dictionary[:h]).to eq("0.\n00\n..")
  end

  it 'looks up letters' do
     translate2 = Translate.new('messages.txt')

     expected = "0.\n.0\n.."

     expect(translate2.search_by_letter("e")).to eq(expected)
  end

  it 'reads English' do
    translate2 = Translate.new('messages.txt')

    translate2.read

    expect('messages.txt'.length).to eq(5)
  end

  it 'translates to Braille' do
    translate2 = Translate.new('messages.txt')

    translate2.translate

    expect('braille.txt'.length).to eq(5)
  end
end
