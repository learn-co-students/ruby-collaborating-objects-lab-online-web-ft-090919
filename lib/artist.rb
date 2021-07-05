class Artist
 attr_accessor :name
 @@all = []
 @@songs = []

 def initialize(name)
  @name = name
  @@all << self
end

  def self.all
    @@all
  end

  def songs
  @songs = Song.all.select {|song| song.artist == self}
  end

  def add_song(song_name)
    song_name.artist = self
end
###
  # def self.find_or_create_by_name(name)
  # self.all.find {|artist| artist.name == name}  || self.new(name)
  # end

  def print_songs
    songs
    @songs.each {|song| puts song.name}
  end

  # def self.new_by_filename(name)
  #   self.all.find{|artist| artist.name == name} || self.new(name).save
  # end

def self.find_or_create_by_name(name)
  self.all.find{|artist| artist.name == name} || self.new(name)
end
end
