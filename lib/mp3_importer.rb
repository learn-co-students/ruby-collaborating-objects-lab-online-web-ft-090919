require 'pry'

class MP3Importer

attr_accessor :path, :files

  def initialize (path)
    @path = path
    @files = Dir.entries(path).select {|f| !File.directory? f}
    #binding.pry
  end

  def import
    @files.each do |file|
      Song.new_by_filename(file)
    end
  end


end
