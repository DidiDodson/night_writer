class Output
  attr_reader :file_name1, :file_name2

  def initialize(file_name1, file_name2)
    @file_name1 = file_name1
    @file_name2 = file_name2
  end

  def add_file_1
    File.open(file_name1, "a+")
  end

  def add_file_2
    File.open(file_name2, "a+")
  end
end
