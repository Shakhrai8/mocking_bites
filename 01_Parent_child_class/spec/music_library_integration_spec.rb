require 'music_library'
require 'track'

RSpec.describe "Music Library Integration" do
  let(:lib) { MusicLibrary.new }
  let(:track_1) { Track.new("Title_1", "Artist_1") } 
  let(:track_2) { Track.new("Lalala", "Something_else") }

  context "given two track entries" do
    it "returns a list of tracks" do
      lib.add(track_1)
      lib.add(track_2)
      expect(lib.all).to eq [track_1, track_2]
    end

    it "returns a list of tracks which matches the keyword" do
      lib.add(track_1)
      lib.add(track_2)
      expect(lib.search("la")).to eq [track_2]
    end

    it "returns a list of tracks which matches the keyword" do
      lib.add(track_1)
      lib.add(track_2)
      expect(lib.search("Some")).to eq [track_2]
    end

    it "returns a list of tracks which matches the keyword" do
      lib.add(track_1)
      lib.add(track_2)
      expect(lib.search("Ar")).to eq [track_1]
    end
  end
end
