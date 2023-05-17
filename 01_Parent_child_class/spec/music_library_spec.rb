require 'music_library'

RSpec.describe MusicLibrary do
  let(:lib) { MusicLibrary.new }
  let(:track_3) { double(:track, matches?: true) }
  let(:track_4) { double(:track, matches?: false) }

  context "isolated tests" do
    it "returns a list of tracks" do
      lib.add(track_3)
      expect(lib.all).to eq [track_3]
    end

    it "returns a list of tracks" do
      lib.add(track_3)
      lib.add(track_4)
      expect(lib.all).to eq [track_3, track_4]
    end

    it "returns a list of tracks which matches the keyword" do
      lib.add(track_3)
      lib.add(track_4)
      expect(lib.search("la")).to eq [track_3]
    end
  end
end
