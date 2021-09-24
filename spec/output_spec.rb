require 'rspec'
require 'optparse'
require './lib/messages'
require './lib/output'

describe Output do
  it 'exists' do
    output = Output.new('dogs.txt')

    expect(output).to be_a(Output)
  end

  it "creates file" do
    output = Output.new('dogs.txt')

    output.add_file

    expect(File.exists?'dogs.txt').to eq true
    expect(File.exists? 'cats.txt').to eq false
  end
end
