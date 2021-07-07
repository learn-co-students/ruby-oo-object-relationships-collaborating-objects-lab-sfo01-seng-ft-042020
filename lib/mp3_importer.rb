require 'pry'
require_relative 'song.rb'
class MP3Importer
  attr_accessor :path
  

  def initialize(path)
    @path = path
    
  end

  def files
    files = Dir["#{path}/*.mp3"]
    files.collect {|file| file.gsub("#{path}/", '')}
    # binding.pry
  end

  def import 
    files.each do |file| 
      Song.new_by_filename(file)
    end
  end

end

