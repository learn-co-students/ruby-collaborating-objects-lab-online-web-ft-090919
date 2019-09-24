class Artist 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    @songs = []
  end 
  
  def self.all 
    @@all 
  end 
  
  def add_song(song)
    #This instance method receives an instance of a Song and associates it belongs to this 
    #Artist instance.
    
    song.artist = self 
     
  end 
  
  def songs 
    #return array of all songs belonging to artist. Get all existing songs from Song and select 
    #songs that are associated with this Artist instance 
    
    @songs = Song.all.select {|song| song.artist == self}
  end 
  
  def self.find_or_create_by_name(artist)
    #take name as argument. Either find artist instance or create new one. Return value should be
    #instance 
    
    if Artist.all.detect {|a| a.name == artist}
      Artist.all.detect {|a| a.name == artist}
    else 
      artist = Artist.new(artist)
    end
  end 
  
  def print_songs
    #output names of all songs associated with this artist instance 
   
    songs 
    @songs.each {|song| puts song.name} 
  end 
  
end 