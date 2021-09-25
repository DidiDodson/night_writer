#!/usr/bin/env ruby

class Dictionary
  attr_accessor :dict, :file_name

  def initialize(file_name)
    @file_name = file_name
    @dictionary = {
             a: "0.\n..\n..", b: "0.\n0.\n..", c: "00\n..\n..", d: "00\n.0\n..",
             e: "0.\n.0\n..", f: "00\n0.\n..", g: "00\n00\n..", h: "0.\n00\n..",
             i: ".0\n0.\n..", j: ".0\n00\n..", k: "0.\n..\n0.", l: "0.\n0.\n0.",
             m: "00\n..\n0.", n: "00\n.0\n0.", o: "0.\n.0\n0.", p: "00\n0.\n0.",
             q: "00\n00\n0.", r: "0.\n00\n0.", s: ".0\n0.\n0.", t: ".0\n00\n0.",
             u: "0.\n..\n00", v: "0.\n0.\n00", w: ".0\n00\n.0", x: "00\n..\n00",
             y: "00\n.0\n00", z: "0.\n.0\n00", " ": "..\n..\n..", ".": "..\n00\n.0",
             ",": "..\n0.\n..", ";": "..\n0.\n0.", ":": "..\n00\n..", "!": "..\n00\n0.",
             "?": "..\n0.\n00", ' " ': "..\n.0\n00", ' " ': "..\n.0\n00",
             " ' ": "..\n..\n0.", "1": "0.\n..\n..", "2": "0.\n0.\n..", "3": "..\n00\n00",
             "4": "00\n.0\n..", "5": "0.\n.0\n..", "6": "00\n0.\n..", "7": "00\n00\n..",
             "8": "0.\n00\n..", "9": ".0\n0.\n..", "0": ".0\n00\n.."
           }
  end

  def search_by_letter(input_item)
    @dictionary[input_item.to_sym]
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

      if arr1.count <= 77
        cond1 = line1[0..77]
        cond2 = line2[0..77]
        cond3 = line3[0..77]

        File.open(@file_name, mode: "a"){|file| file.puts "#{cond1.join(" ")}\n#{cond2.join(" ")}\n#{cond3.join(" ")}\n"}

      elsif (arr1.count >= 78) && (arr1.count < 155)
        cond1 = line1[0..77]
        cond2 = line2[0..77]
        cond3 = line3[0..77]
        cond4 = line1[78..155]
        cond5 = line2[78..155]
        cond6 = line3[78..155]

        File.open(@file_name, mode: "a"){|file| file.puts "#{cond1.join(" ")}\n#{cond2.join(" ")}\n#{cond3.join(" ")}\n#{cond4.join(" ")}\n#{cond5.join(" ")}\n#{cond6.join(" ")}\n"}

      elsif (arr1.count >= 156) && (arr1.count < 233)
        cond1 = line1[0..77]
        cond2 = line2[0..77]
        cond3 = line3[0..77]
        cond4 = line1[78..155]
        cond5 = line2[78..155]
        cond6 = line3[78..155]
        cond7 = line1[156..233]
        cond8 = line2[156..233]
        cond9 = line3[156..233]

        File.open(@file_name, mode: "a"){|file| file.puts "#{cond1.join(" ")}\n#{cond2.join(" ")}\n#{cond3.join(" ")}\n#{cond4.join(" ")}\n#{cond5.join(" ")}\n#{cond6.join(" ")}\n#{cond7.join(" ")}\n#{cond8.join(" ")}\n#{cond9.join(" ")}\n"}

      elsif (arr1.count >= 234) && (arr1.count < 312)
        cond1 = line1[0..77]
        cond2 = line2[0..77]
        cond3 = line3[0..77]
        cond4 = line1[78..155]
        cond5 = line2[78..155]
        cond6 = line3[78..155]
        cond7 = line1[156..233]
        cond8 = line2[156..233]
        cond9 = line3[156..233]
        cond10 = line1[234..312]
        cond11 = line2[234..312]
        cond12 = line3[234..312]

        File.open(@file_name, mode: "a"){|file| file.puts "#{cond1.join(" ")}\n#{cond2.join(" ")}\n#{cond3.join(" ")}\n#{cond4.join(" ")}\n#{cond5.join(" ")}\n#{cond6.join(" ")}\n#{cond7.join(" ")}\n#{cond8.join(" ")}\n#{cond9.join(" ")}\n#{cond10.join(" ")}\n#{cond11.join(" ")}\n#{cond12.join(" ")}\n"}
      end
  end
end
