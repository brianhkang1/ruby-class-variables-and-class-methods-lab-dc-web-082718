class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_hash = {}
  @@artist_hash = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each do |element|
      if @@genre_hash.has_key?(element)
        @@genre_hash[element] += 1
      else
        @@genre_hash[element] = 1
      end
    end
    @@genre_hash
  end

  def self.artist_count
    @@artists.each do |element|
      if @@artist_hash.has_key?(element)
        @@artist_hash[element] += 1
      else
        @@artist_hash[element] = 1
      end
    end
    @@artist_hash
  end

end
