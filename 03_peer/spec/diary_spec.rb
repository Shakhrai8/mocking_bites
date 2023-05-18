require 'diary'

RSpec.describe Diary do
  let(:entry) { double(:entry, contents: "Hello World") }
  
  context "mocking tests" do
    it "returns string" do
      allow(entry).to receive(:read).and_return(entry.contents)
      expect(entry.read).to eq "Hello World" 
    end
  end

  context "isolated tests" do
    it "returns string" do
      entry_1 = Diary.new(entry.contents)
      expect(entry_1.read).to eq entry.contents
    end

  end
end