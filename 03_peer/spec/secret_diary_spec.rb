require 'secret_diary'

RSpec.describe SecretDiary do
  let(:diary_1) { double(:diary, contents: "Hello World") }
  let(:diary_2) { double(:diary, contents: "Bye World") }
  
  context "given a diary instance double" do
    it "returns error message" do
      entry = SecretDiary.new(diary_1)
      entry.lock
      expect(entry.read).to eq "Go away spy!"
    end

    it "returns the string" do
      entry = SecretDiary.new(diary_1)
      entry.lock
      entry.unlock
      expect(entry.read).to eq diary_1
    end
  end
end