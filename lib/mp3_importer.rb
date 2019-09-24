require 'pry'

class MP3Importer
  attr_reader :path 
  
  def initialize(path)
    @path = path
  end 
  
  def files
    @files = Dir.children(@path) 
    
    #.each {|f| f.gsub!(".mp3", "")}
  end 
  
  def import 
    #use Song.new_by_filename to create from list of files
    
    files
    @files.each { |file| Song.new_by_filename(file) }
  end 
end 