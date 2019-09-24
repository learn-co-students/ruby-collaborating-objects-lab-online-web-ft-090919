class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end
 
  def songs
    Song.all.select { |song| song.artist == self }
  end
  
  def self.find_or_create_by_name(name)
    artist = @@all.find { |artist| artist.name = name }
    
    unless artist
      Artist.new(name)
    else
      artist
    end
  end
   
  def print_songs
     puts songs.collect { |song| song.name }
  end
end
