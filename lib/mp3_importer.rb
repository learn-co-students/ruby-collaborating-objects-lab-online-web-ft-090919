class MP3Importer
  attr_accessor :path
  
  @@files = []
  
  def initialize(path)
    @path = path
    @@files << @path
  end
  
  def files
    files = []
    Dir.new(self.path).each do |file|
    files << file if file.length > 4
    end
  files
  end
  
  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
  
end