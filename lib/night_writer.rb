#!/usr/bin/env ruby
require 'optparse'
require './messages'
require './output'
require './dictionary'

f_message = ARGV[0]
s_message = ARGV[1]

message1 = Messages.new(s_message)
output1 = Output.new(s_message)
dictionary1 = Dictionary.new


puts message1.first_message
output1.add_file
dictionary1.read_conv_write
