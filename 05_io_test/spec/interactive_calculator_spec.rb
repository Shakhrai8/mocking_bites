require 'interactive_calculator'

RSpec.describe InteractiveCalculator do
  context "mocking tests" do
    it "" do
      io = double :io
      interactive_calculator = InteractiveCalculator.new(Kernel)
      interactive_calculator.run  
    end 
  end
end