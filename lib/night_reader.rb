#!/usr/bin/env ruby
require 'optparse'
require './messages'
require './output'

f_message = ARGV[0]
s_message = ARGV[1]

message1 = Messages.new(s_message)

puts message1.second_message
