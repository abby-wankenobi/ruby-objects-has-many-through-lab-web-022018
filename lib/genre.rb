class Genre

  attr_reader :name, :artist
  attr_accessor :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.genre = self
  end

  def artists
    @songs.collect { |song| song.artist }
  end

end
