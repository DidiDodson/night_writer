#!/usr/bin/env ruby

class Dictionary
  attr_accessor :dict

  def initialize
    @letters = {
             a: "0.\n..\n..",
             b: "0.\n0.\n..",
             c: "00\n..\n..",
             d: "00\n.0\n..",
             e: "0.\n.0\n..",
             f: "00\n0.\n..",
             g: "00\n00\n..",
             h: "0.\n00\n..",
             i: ".0\n0.\n..",
             j: ".0\n00\n..",
             k: "0.\n..\n0.",
             l: "0.\n0.\n0.",
             m: "00\n..\n0.",
             n: "00\n.0\n0.",
             o: "0.\n.0\n0.",
             p: "00\n0.\n0.",
             q: "00\n00\n0.",
             r: "0.\n00\n0.",
             s: ".0\n0.\n0.",
             t: ".0\n00\n0.",
             u: "0.\n..\n00",
             v: "0.\n0.\n00",
             w: ".0\n00\n.0",
             x: "00\n..\n00",
             y: "00\n.0\n00",
             z: "0.\n.0\n00",
             " ": "..\n..\n.."
           }
  end

  def search_by_letter(letter)
    @letters[letter.to_sym]
  end

  def read_conv_write
    arr1 = []
    lines = IO.read("messages.txt").chomp
      lines.each_char do |line|
        letter_hash = search_by_letter(line)
        arr1 << letter_hash.split("\n")
      end

      line1 = arr1.map do |arr|
        arr[0]
      end

      line2 = arr1.map do |arr|
        arr[1]
      end
      line3 = arr1.map do |arr|
        arr[2]
      end
      
    File.open("braille.txt", mode: "a"){ |file| file.puts "#{line1.join(" ")}\n#{line2.join(" ")}\n#{line3.join(" ")}"}
  end
end
