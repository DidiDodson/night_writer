#!/usr/bin/env ruby

class Output

  attr_accessor :file_name

  def initialize(file_name)
    @file_name = file_name
  end

  def add_file
    File.new(file_name, "w+")
  end
end
