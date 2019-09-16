class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

  def artist_name=(name)
    Artist.find_or_create_by_name(name).add_song(self)
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    artist_name = filename.split("-")[0].strip
    song_name = filename.split("-")[1].strip
    new_song = Song.new(song_name)
    new_song.artist_name=(artist_name)
    new_song
  end
end
