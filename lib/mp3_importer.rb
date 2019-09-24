class MP3Importer
  
  attr_accessor :path
    
  def initialize(path)
    @path = path    
  end
  
  def files
    dir_files = Dir[path + "/*.mp3"]
    mp3_files = []
    dir_files.each do |file|
      mp3_files << file.split("/").last
    end
    mp3_files
  end
  
  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end