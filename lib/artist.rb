require "pry"

class Artist
  attr_accessor :name, :songs
  
  @@all = []
  
  
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |song_by_artist|
      song_by_artist.artist == self
    end
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
    
    unless @@all.find do |artist|
      artist.name == name
    end
      name = self.new(name)
      
    else
      @@all.find do |artist|
        artist.name == name
      end
    end 
    
  end
  
  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
  
end