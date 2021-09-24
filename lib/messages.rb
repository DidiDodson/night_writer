#!/usr/bin/env ruby

class Messages

  attr_accessor :file_name, :num_characters

  def initialize(file_name)
    @file_name = file_name
    @num_characters = num_characters
  end

  def first_message
    "Created #{file_name} containing #{[num_characters]} characters"
  end

  def read_char_num
    lines = File.readlines("messages.txt")
    line_count = lines.size
    text = lines.join
    total_characters = text.length
    puts "#{total_characters} characters"
  end
end
