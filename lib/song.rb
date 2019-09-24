class Song 
  attr_accessor :artist, :name
  @@all = []
  
  def initialize(title)
    @name = title 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.new_by_filename(file)
    filename = file.split(" - ")
    artist = filename[0]
    title = filename[1]
    song = Song.new(title)
    song.artist_name = artist
    song
  end 
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end 
end 