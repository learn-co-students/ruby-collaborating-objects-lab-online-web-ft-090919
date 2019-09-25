require "pry"
class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(file)
    name_artist = file.split(/( - |.mp3)/)
    name_artist[2] = self.new(name_artist[2])
    name_artist[2].artist = Artist.new(name_artist[0])
    name_artist[2]
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end