require "pry"
require "pry-moves"

class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # def artist=(artist)
  #   Artist.all.select {|artist| artist.name == self.name}
  #   # @artist = artist
  #   binding.pry
  # end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)

    artist_name, song_name = filename.split(" - ")

    new_song = self.new(song_name)
    # artist = Artist.all.select {|artist| artist.name == artist_name }
    # if artist.empty?
    #   artist = Artist.new(artist_name)
    # end

    new_song.artist_name = artist_name

    # binding.pry

    new_song
  end

  def artist_name=(name)

    artist = Artist.find_or_create_by_name(name)

    # binding.pry
    # self.artist = artist
    artist.add_song(self)
  end

end
