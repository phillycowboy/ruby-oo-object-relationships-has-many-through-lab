
class Genre 

    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name 
        @@all << self 
    end
    
    def self.all 
        @@all 
    end

    def songs 
        Song.all do |songs|
            songs.genre == self 
        end
    end

    def artists 
        songs.collect do |songs|
            songs.artist 
        end
    end

end