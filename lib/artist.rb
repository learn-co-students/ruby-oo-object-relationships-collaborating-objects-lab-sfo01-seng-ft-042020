require 'pry'
class Artist

    attr_accessor :name

    @@all = []
  
    def initialize(name)
      @name = name
      @songs = []
      save
    end
  
    def self.all
      @@all
    end
  
    def self.create(name)
      artist = self.new(name)
      artist.name = name
      artist
    end
  
    def self.find(name)
      self.all.detect { |artist| artist.name == name }
    end
  
    def self.find_or_create_by_name(name)
      self.find(name) || self.create(name)
    end
  
    def add_song(song)
      @songs << song
    end
  
    def print_songs
      songs.each { |song| puts song.name }
    end
  
    def save
      @@all << self
    end
  
    def songs
        @songs
        # Song.all.select { |s| s.name == self }
    end
# This instance method returns an Array of all songs that 
# belong to this Artist instance. This method should get 
# all existing Song instances from Song and select only
#  the ones that are associated with this Artist instance.
end
# binding.pry
# 0













