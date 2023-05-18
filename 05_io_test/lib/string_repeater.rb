class StringRepeater
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will repeat a string many times."
    @io.puts "Please enter a string"
    string = @io.gets.chomp
    @io.puts "Please enter a number of repeats"
    number = @io.gets.chomp.to_i
    result = number.times { @io.puts "#{string}"}
    @io.puts "Here is your result:"
    @io.puts result
  end
end


