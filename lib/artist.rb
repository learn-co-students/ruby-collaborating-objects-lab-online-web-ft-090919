

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def songs
    # binding.pry
    Song.all.select {|song| song.artist == self }
  end

  def add_song(song)
    # binding.pry
    song.artist = self
  end

  def self.find_or_create_by_name(artist_name)

    artist = self.all.find {|artist| artist.name == artist_name }

    if !artist
      artist = Artist.new(artist_name)
    end
    # binding.pry
    artist
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

end
