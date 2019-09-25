lass Artitst 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def self.all 
    @@all << self  
  end
  
  def songs 
    songs.all.each { |song| 
  end
end