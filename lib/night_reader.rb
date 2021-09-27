#!/usr/bin/env ruby
require 'optparse'
require './messages'
require './output'
require './reader_dictionary'
require './r_translate'

@f_message = ARGV[0]
@s_message = ARGV[1]

message1 = Messages.new(@s_message)
output1 = Output.new(@s_message)
translate1 = Translate.new(@s_message)

puts message1.second_message
output1.add_file
translate1.read
translate1.write
