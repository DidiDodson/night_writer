#!/usr/bin/env ruby

class ReaderDictionary
  attr_accessor :r_dictionary, :file_name, :new, :lines

  def initialize(file_name)
    @new = []
    @file_name = file_name
    @lines = File.read('braille0.txt')
    @r_dictionary = {
                      ["0.","..",".."] => "a", ["0.","0.", ".."] => "b", ["00", "..", ".."] => "c", ["00", ".0", ".."] => "d", ["0.", ".0", ".."] => "e", ["00", "0.", ".."] => "f", ["00", "00", ".."] => "g", ["0.", "00", ".."] => "h", [".0", "0.", ".."] => "i", [".0", "00", ".."] => "j", ["0.", "..", "0."] => "k", ["0.", "0.", "0."] => "l", ["00", "..", "0."] => "m", ["00", ".0", "0."] => "n", ["0.", ".0", "0."] => "o", ["00", "0.", "0."] => "p", ["00", "00", "0."] => "q", ["0.", "00", "0."] => "r", [".0", "0.", "0."] => "s", [".0", "00", "0."] => "t", ["0.", "..", "00"] => "u", ["0.", "0.", "00"] => "v", [".0", "00", ".0"] => "w", [".0", "00", ".0"] => "x", ["00", ".0", "00"] => "y", ["0.", ".0", "00"] => "z", ["..", "..", ".."] => " "
      }
  end

  def search_by_braille(input)
    @r_dictionary[input]
  end

  def read
    line_array = @lines.split("\n")
    line = line_array.map do |letter_part|
      letter_part.split(" ")
    end.flatten

    lines = line.map do |item|
      item.chars.each_slice(2).map(&:join)
    end

    a = lines[0]
    b = lines[1]
    c = lines[2]
    d = a.zip(b, c)

    f = d.map do |let|
      search_by_braille(let)
    end

    new = f.join(" ")
    File.open(@file_name, mode: "a"){|file| file.puts "#{new}"}
  end
end
