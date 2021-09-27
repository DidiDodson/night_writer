#!/usr/bin/env ruby
require 'optparse'
require './messages'
require './output'
require './reader_dictionary'

@f_message = ARGV[0]
@s_message = ARGV[1]

message1 = Messages.new(@s_message)
output1 = Output.new(@s_message)
reader_dictionary1 = ReaderDictionary.new(@s_message)

puts message1.second_message
output1.add_file
reader_dictionary1.read
# reader_dictionary1.transalte
