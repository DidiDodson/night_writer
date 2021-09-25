class Convert < WriterDictionary
  attr_accessor :file_name, :dictionary, :arr1

  def initialize(file_name)
    super
  end

  def translate
    line1 = @arr1.map do |arr|
      arr[0]

    end

    line2 = @arr1.map do |arr|
      arr[1]
    end

    line3 = @arr1.map do |arr|
      arr[2]
    end

    if @arr1.count <= 77
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
