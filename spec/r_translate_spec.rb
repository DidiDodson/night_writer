require 'rspec'
require 'optparse'
require './lib/messages'
require './lib/output'
require './lib/reader_dictionary'
require './r_translate'

describe Translate do
  it 'exists' do
    translate2 = Translate.new('braille.txt')

    expect(translate2).to be_a(Translate)
  end

  it 'has attributes' do
    translate2 = Translate.new('braille.txt')

    expect(translate2.r_dictionary.r_dictionary[["0.","..",".."]]).to eq("a")
  end

  it 'looks up letters' do
     translate2 = Translate.new('messages.txt')

     expect(translate2.search_by_braille(["0.","..",".."])).to eq("a")
  end

  xit 'reads Braille' do
    translate2 = Translate.new('messages.txt')

    translate2.read

    expect('messages.txt'.length).to eq(5)
  end

  xit 'translates to English' do
    translate2 = Translate.new('messages.txt')

    translate2.write

    expect('braille.txt'.length).to eq(5)
  end
end
