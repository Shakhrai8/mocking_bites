require 'track'

RSpec.describe Track do
  let(:track_1) { Track.new("Title_1", "Artist_1") } 
  let(:track_2) { Track.new("Lalala", "Something_else") }

  context "isolated tests" do
    it "returns title" do
      expect(track_1.title).to eq "Title_1"
    end

    it "returns artist" do
      expect(track_2.artist).to eq "Something_else"
    end

    it "#matches?" do
      expect(track_2.matches?("la")).to eq true
      expect(track_1.matches?("la")).to eq false
    end
  end
end