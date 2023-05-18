require 'secret_diary'
require 'diary'

RSpec.describe "SecretDiary Integration" do
  let(:diary_1) { Diary.new("Hello World") }
  let(:diary_2) { Diary.new("Bye World") }
  
  context "given a diary instance" do
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