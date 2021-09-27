class Translate
  attr_reader :r_dictionary, :file_name

  def initialize(file_name)
    @file_name = file_name
    @r_dictionary = ReaderDictionary.new(ARGV[1])
  end

  def search_by_braille(input)
    @r_dictionary.r_dictionary[input]
  end

  def read
    # lines = File.read('./lib/braille_test.txt')
    lines = File.read(ARGV[0])
    line_array = lines.split("\n")
    compress = line_array.map do |line|
      line.delete(" ")
    end

    line = compress.map do |letter_part|
      letter_part.split(" ")
    end.flatten

    @line2 = line.map do |item|
      item.chars.each_slice(2).map(&:join)
    end

    def write
      @l11 = @line2[0]
      @l12 = @line2[1]
      @l13 = @line2[2]
      @l21 = @line2[3]
      @l22 = @line2[4]
      @l23 = @line2[5]
      @l31 = @line2[6]
      @l32 = @line2[7]
      @l33 = @line2[8]

      if @line2.include?(@l21) == false
        zip1 = @l11.zip(@l12, @l13)

        search1 = zip1.map do |let|
          search_by_braille(let)
        end

        new1 = search1.join(" ")

        File.open(@file_name, mode: "a"){|file| file.puts "#{new1}"}

      elsif (@line2.include?(@l21) == true) && (@line2.include?(@l31) == false)

        zip1 = @l11.zip(@l12, @l13)
        zip2 = @l21.zip(@l22, @l23)

        search1 = zip1.map do |let|
          search_by_braille(let)
        end
        search2 = zip2.map do |let|
          search_by_braille(let)
        end

        new1 = search1.join(" ")
        new2 = search2.join(" ")

        File.open(@file_name, mode: "a"){|file| file.puts "#{new1}\n#{new2}"}

      elsif @line2.include?(@l31) == true

        zip1 = @l11.zip(@l12, @l13)
        zip2 = @l21.zip(@l22, @l23)
        zip3 = @l31.zip(@l32, @l33)

        search1 = zip1.map do |let|
          search_by_braille(let)
        end
        search2 = zip2.map do |let|
          search_by_braille(let)
        end
        search3 = zip3.map do |let|
          search_by_braille(let)
        end

        new1 = search1.join(" ")
        new2 = search2.join(" ")
        new3 = search3.join(" ")

        File.open(@file_name, mode: "a"){|file| file.puts "#{new1}\n#{new2}\n#{new3}"}
      end
    end
  end
end
