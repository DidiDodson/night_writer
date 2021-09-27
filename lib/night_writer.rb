#!/usr/bin/env ruby
require 'optparse'
require './messages'
require './output'
require './writer_dictionary'

@f_message = ARGV[0]
@s_message = ARGV[1]

message1 = Messages.new(@s_message)
output1 = Output.new(@s_message)
writer_dictionary1 = WriterDictionary.new(@s_message)


puts message1.first_message
output1.add_file
writer_dictionary1.search_by_letter(@s_message)
writer_dictionary1.read
writer_dictionary1.translate


# ./night_writer.rb messages.txt braille.txt
