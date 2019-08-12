class Song


  attr_reader :name , :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
  end

  def count
    @@count
  end

  def artists
    @@artists
  end

  def genres
    @@genres
  end
end
