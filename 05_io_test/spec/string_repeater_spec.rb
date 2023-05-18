require 'string_repeater'

RSpec.describe StringRepeater do
  context "mocking test" do
    it "works" do
      io = double(:io)
      allow(io).to receive(:puts)
      allow(io).to receive(:gets).and_return("Hello", "3")

      string_repeater = StringRepeater.new(io)
      string_repeater.run

      expect(io).to have_received(:puts).with("Hello. I will repeat a string many times.")
      expect(io).to have_received(:puts).with("Please enter a string")
      expect(io).to have_received(:puts).with("Please enter a number of repeats")
      expect(io).to have_received(:puts).with("Here is your result:")
    end
  end
end
