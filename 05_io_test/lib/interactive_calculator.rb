class InteractiveCalculator
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will subtract two numbers."
    @io.puts "Please enter a number"
    number = @io.gets.chomp.to_i
    @io.puts "Please enter another number"
    number_2 = @io.gets.chomp.to_i
    result = (number - number_2)
    @io.puts "Here is your result:"
    @io.puts "#{number} - #{number_2} = #{result}"
  end
end
