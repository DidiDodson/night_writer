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

  def write
    if @arr1.count < 40
      cond1 = @line1[0..39]
      cond2 = @line2[0..39]
      cond3 = @line3[0..39]

      File.open(@file_name, mode: "a"){|file| file.puts "#{cond1.join(" ").delete(" ")}\n#{cond2.join(" ").delete(" ")}\n#{cond3.join(" ").delete(" ")}\n"}

    elsif (@arr1.count >= 40) && (@arr1.count < 80)

      cond1 = @line1[0..39]
      cond2 = @line2[0..39]
      cond3 = @line3[0..39]
      cond4 = @line1[40..79]
      cond5 = @line2[40..79]
      cond6 = @line3[40..79]

      File.open(@file_name, mode: "a"){|file| file.puts "#{cond1.join(" ").delete(" ")}\n#{cond2.join(" ").delete(" ")}\n#{cond3.join(" ").delete(" ")}\n#{cond4.join(" ").delete(" ")}\n#{cond5.join(" ").delete(" ")}\n#{cond6.join(" ").delete(" ")}\n"}

    elsif (@arr1.count >= 80) && (@arr1.count < 120)
      cond1 = @line1[0..39]
      cond2 = @line2[0..39]
      cond3 = @line3[0..39]
      cond4 = @line1[40..79]
      cond5 = @line2[40..79]
      cond6 = @line3[40..79]
      cond7 = @line1[80..119]
      cond8 = @line2[80..119]
      cond9 = @line3[80..119]

      File.open(@file_name, mode: "a"){|file| file.puts "#{cond1.join(" ").delete(" ")}\n#{cond2.join(" ").delete(" ")}\n#{cond3.join(" ").delete(" ")}\n#{cond4.join(" ").delete(" ")}\n#{cond5.join(" ").delete(" ")}\n#{cond6.join(" ").delete(" ")}\n#{cond7.join(" ").delete(" ")}\n#{cond8.join(" ").delete(" ")}\n#{cond9.join(" ").delete(" ")}\n"}

    elsif (@arr1.count >= 120) && (@arr1.count <= 161)
      cond1 = @line1[0..39]
      cond2 = @line2[0..39]
      cond3 = @line3[0..39]
      cond4 = @line1[40..79]
      cond5 = @line2[40..79]
      cond6 = @line3[40..79]
      cond7 = @line1[80..119]
      cond8 = @line2[80..119]
      cond9 = @line3[80..119]
      cond10 = @line1[120..160]
      cond11 = @line2[120..160]
      cond12 = @line3[120..160]

      File.open(@file_name, mode: "a"){|file| file.puts "#{cond1.join(" ").delete(" ")}\n#{cond2.join(" ").delete(" ")}\n#{cond3.join(" ").delete(" ")}\n#{cond4.join(" ").delete(" ")}\n#{cond5.join(" ").delete(" ")}\n#{cond6.join(" ").delete(" ")}\n#{cond7.join(" ").delete(" ")}\n#{cond8.join(" ").delete(" ")}\n#{cond9.join(" ").delete(" ")}\n#{cond10.join(" ").delete(" ")}\n#{cond11.join(" ").delete(" ")}\n#{cond12.join(" ").delete(" ")}\n"}
    end
  end
end
