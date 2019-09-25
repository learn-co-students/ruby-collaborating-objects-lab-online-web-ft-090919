class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def self.find(name)
    @@all.find {|artist| artist.name == name}
  end 
  
  def self.create(name)
    artist = self.new(name)
    artist
  end
  
  def self.find_or_create_by_name(artist_name)
    unless self.find(artist_name)
      self.create(artist_name)
    else 
      self.find(artist_name)
    end 
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self} 
  end
  
  def print_songs
    songs.each {|song| puts song.name}
  end 
  
  def add_song(song)
    song.artist = self 
  end 
end 



















def add_song(song)
    @songs << song 
    song.artist = self
  end 
  
  def self.find_or_create_by_name(name)
    unless @@all.find {|artist| artist.name == name}
      Artist.new(name)
    else 
      @@all.find {|artist| artist.name == name}
    end 
  end 
  
  def print_songs
    songs 
    @songs.each {|song| puts song.name}
  end 