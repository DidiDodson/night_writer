#!/usr/bin/env ruby

class Messages

  attr_accessor :file_name

  def initialize(file_name)
    @file_name = file_name
  end

  def first_message
    "Created '#{file_name}' containing #{read_char_num} characters"
  end

  def read_char_num
    lines = IO.read("messages.txt")
    text = lines.chomp!
    total_characters = text.length
    "#{total_characters}"
  end

  def read_braille_num
    lines = File.read("braille0.txt")
    line = lines.split("\n")
    item = line[0].chars.each_slice(2).map(&:join)
    item.count
  end

  def second_message
    "Created '#{file_name}' containing #{read_braille_num} characters."
  end
end
