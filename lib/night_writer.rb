#!/usr/bin/env ruby
require './messages'
require './output'
require './writer_dictionary'
require './w_translate'

@f_message = ARGV[0]
@s_message = ARGV[1]

output1 = Output.new(@f_message, @s_message)
message1 = Messages.new(@s_message)
translate1 = Translate.new(@s_message)

output1.add_file_1
output1.add_file_2
puts message1.first_message
translate1.search_by_letter(@s_message)
translate1.read
translate1.write


# ./night_writer.rb messages.txt braille.txt
# rspec -P spec/braille_test.rb,spec/w_translate_spec.rb
