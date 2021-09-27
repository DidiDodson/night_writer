class Translate
  attr_accessor :dictionary, :file_name, :arr1

  def initialize(file_name)
    @file_name = file_name
    @arr1 = []
    @dictionary = WriterDictionary.new(ARGV[1])
  end

  def search_by_letter(input_item)
    @dictionary.dictionary[input_item.to_sym]
  end

  def read
    lines = IO.read(ARGV[0]).chomp
    lines.each_char do |line|
      letter_hash = search_by_letter(line)
      @arr1 << letter_hash.split("\n")
    end

    @line1 = @arr1.map do |arr|
      arr[0]
    end

    @line2 = @arr1.map do |arr|
      arr[1]
    end

    @line3 = @arr1.map do |arr|
      arr[2]
    end
  end

  def translate
    if @arr1.count <= 80
      cond1 = @line1[0..80]
      cond2 = @line2[0..80]
      cond3 = @line3[0..80]

      File.open(@file_name, mode: "a"){|file| file.puts "#{cond1.join(" ")}\n#{cond2.join(" ")}\n#{cond3.join(" ")}\n"}

    elsif (arr1.count >= 81) && (arr1.count < 160)
      cond1 = line1[0..80]
      cond2 = line2[0..80]
      cond3 = line3[0..80]
      cond4 = line1[81..159]
      cond5 = line2[81..159]
      cond6 = line3[81..159]

      File.open(@file_name, mode: "a"){|file| file.puts "#{cond1.join(" ")}\n#{cond2.join(" ")}\n#{cond3.join(" ")}\n#{cond4.join(" ")}\n#{cond5.join(" ")}\n#{cond6.join(" ")}\n"}

    elsif (arr1.count >= 160) && (arr1.count < 240)
      cond1 = line1[0..80]
      cond2 = line2[0..80]
      cond3 = line3[0..80]
      cond4 = line1[81..159]
      cond5 = line2[81..159]
      cond6 = line3[81..159]
      cond7 = line1[160..239]
      cond8 = line2[156..239]
      cond9 = line3[156..239]

      File.open(@file_name, mode: "a"){|file| file.puts "#{cond1.join(" ")}\n#{cond2.join(" ")}\n#{cond3.join(" ")}\n#{cond4.join(" ")}\n#{cond5.join(" ")}\n#{cond6.join(" ")}\n#{cond7.join(" ")}\n#{cond8.join(" ")}\n#{cond9.join(" ")}\n"}

    elsif (arr1.count >= 240) && (arr1.count <= 320)
      cond1 = line1[0..80]
      cond2 = line2[0..80]
      cond3 = line3[0..80]
      cond4 = line1[81..159]
      cond5 = line2[81..159]
      cond6 = line3[81..159]
      cond7 = line1[160..239]
      cond8 = line2[156..239]
      cond9 = line3[156..239]
      cond10 = line1[240..320]
      cond11 = line2[240..320]
      cond12 = line3[240..320]

      File.open(@file_name, mode: "a"){|file| file.puts "#{cond1.join(" ")}\n#{cond2.join(" ")}\n#{cond3.join(" ")}\n#{cond4.join(" ")}\n#{cond5.join(" ")}\n#{cond6.join(" ")}\n#{cond7.join(" ")}\n#{cond8.join(" ")}\n#{cond9.join(" ")}\n#{cond10.join(" ")}\n#{cond11.join(" ")}\n#{cond12.join(" ")}\n"}
    end
  end
end
