require 'pry'
class Song

@@all = []

def self.all
  @@all
end

def self.new_by_filename (file)
  artist, name = file.split(" - ")
  var = self.new(name)
  #binding.pry
  var.artist = Artist.find_or_create_by_name(artist)
  var
end


attr_accessor :name
attr_reader :artist

def initialize (name)
  @name = name
  @@all << self
end

def artist= (artist_obj)
  @artist = artist_obj
end

def artist_name=(name)
  self.artist = Artist.find_or_create_by_name (name)
end



end
