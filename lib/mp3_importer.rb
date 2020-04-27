class MP3Importer 

        attr_accessor :path
        
    def initialize(path)
        @path = path 
    end

    def files
        Dir[path + "/*"].map {|song| song.split("/").last} #Dir path loads file
    end

    def import
        files.each {|f| Song.new_by_filename(f)}
    end
    
end 