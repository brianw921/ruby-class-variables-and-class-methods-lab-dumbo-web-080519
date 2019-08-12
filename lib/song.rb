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

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count(genre)
    genres = Hash.new(0)
    if @@genres.include?(genre)
      genres[genre] += 1
    else
      genres[genre] = 1
    end
  end
end
