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
    item1 = line[0].chars.each_slice(2).map(&:join)
    item2 = line[3].chars.each_slice(2).map(&:join)
    item3 = line[6].chars.each_slice(2).map(&:join)
    if item2 && item3 == nil
      item1.count
    elsif item3 == nil
      item2.count + item2.count
    else
      item2.count + item2.count + item3.count
    end
  end

  def second_message
    "Created '#{file_name}' containing #{read_braille_num} characters."
  end
end
