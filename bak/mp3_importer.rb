

class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files

    file_names = []
    basedir = @path

    files = Dir.glob(@path + "/*.mp3")

    files.map {|file| file_names << file.split("/").last}

    file_names
  end

  def import

    self.files.each do |file|
      binding.pry

      Song.new_by_filename(file)
    end


  end

end
