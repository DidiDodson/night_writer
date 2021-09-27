#!/usr/bin/env ruby
class Messages

  attr_accessor :file_name, :argv, :braille_tester, :english_tester

  def initialize(file_name)
    @file_name = file_name
    @lines = File.read(ARGV[0])
  end

  def read_char_num
    # text = File.read('./lib/messages_test.txt')
    text = @lines.chomp!
    total_characters = text.length
    "#{total_characters}"
  end

  def first_message
    "Created '#{file_name}' containing #{read_char_num} characters"
  end

  def read_braille_num
    # test_line = File.read('./lib/braille_test.txt')
    # line = test_line.split("\n")
    line = @lines.split("\n")
    compress = line.map do |letter|
      letter.delete(" ")
    end

    if compress.count == 3
      item1 = compress[0].chars.each_slice(2).map(&:join)
      item1.count
    elsif compress.count == 6
      item1 = compress[0].chars.each_slice(2).map(&:join)
      item2 = compress[3].chars.each_slice(2).map(&:join)
      item1.count + item2.count

    elsif compress.count == 9
      item1 = compress[0].chars.each_slice(2).map(&:join)
      item2 = compress[3].chars.each_slice(2).map(&:join)
      item3 = compress[6].chars.each_slice(2).map(&:join)
      item1.count + item2.count + item3.count
    end
  end

  def second_message
    "Created '#{file_name}' containing #{read_braille_num} characters."
  end
end
