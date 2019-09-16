class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

  def songs
    Song.all.select { |song| song.artist == self}
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

  def add_song(song)
    song.artist = self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    search = @@all.find { |artist| artist.name == name }
    !!search ? search : Artist.new(name)
  end
end
