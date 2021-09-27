#!/usr/bin/env ruby
require 'optparse'
require './messages'
require './output'
require './writer_dictionary'
require './w_translate'

@f_message = ARGV[0]
@s_message = ARGV[1]

message1 = Messages.new(@s_message)
output1 = Output.new(@s_message)
translate1 = Translate.new(@s_message)

puts message1.first_message
output1.add_file
translate1.search_by_letter(@s_message)
translate1.read
translate1.write


# ./night_writer.rb messages.txt braille.txt
