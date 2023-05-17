class MusicLibrary
  def initialize
    @library = []
  end

  def add(track) # track is an instance of Track
    @library << track
  end

  def all
    @library
  end
  
  def search(keyword) # keyword is a string
    @library.map{|track| track.matches?(keyword) ? track : nil}.compact
  end
end