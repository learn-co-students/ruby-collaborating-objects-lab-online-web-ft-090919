class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  require 'pry'
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    artist = filename.split(" - ")[0]
    name = filename.split(" - ")[1]
    song = self.new(name)
    song.artist_name = artist
    song
  end
  
  def artist_name=(name)
    Artist.find_or_create_by_name(name).add_song(self)
  end
end 
  
  
  
    
    

 
  
  
  