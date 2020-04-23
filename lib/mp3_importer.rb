require 'pry'

class MP3Importer
    attr_reader :path

    def initialize(path)
        @path = path
    end

    def files
        Dir[path + "/*"].map {|file| file.split("/")[-1]}
    end

    def import
        files.each {|file| Song.new_by_filename(file)}
    end
end