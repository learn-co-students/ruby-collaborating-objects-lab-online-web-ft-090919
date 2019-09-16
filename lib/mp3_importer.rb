class MP3Importer
  attr_accessor :path

  def initialize(path)
    self.path = path
  end

  def files
    file_names = Dir["#{path}/*"].map { |filename| filename.split("/")[-1] }
  end

  def import
    files.each { |file_name| Song.new_by_filename(file_name) }
  end
end
