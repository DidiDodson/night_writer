#!/usr/bin/env ruby
require './messages'
require './output'
require './reader_dictionary'
require './r_translate'

@f_message = ARGV[0]
@s_message = ARGV[1]

message1 = Messages.new(@s_message)
output1 = Output.new(@f_message, @s_message)
translate1 = Translate.new(@s_message)

output1.add_file_1
output1.add_file_2
puts message1.second_message
translate1.read
translate1.write

# ./night_reader.rb braille.txt message_output.txt
# rspec -P spec/braille_test.rb,spec/r_translate_spec.rb
