require 'rspec'
require './lib/messages'
require './lib/output'

describe Output do
  it 'exists' do
    output = Output.new('dogs.txt', 'cats.txt')

    expect(output).to be_a(Output)
  end

  it "creates file" do
    output = Output.new('dogs.txt', 'cats.txt')

    output.add_file_1
    output.add_file_2

    expect(File.exists?'dogs.txt').to eq true
    expect(File.exists? 'fish.txt').to eq false
  end
end
