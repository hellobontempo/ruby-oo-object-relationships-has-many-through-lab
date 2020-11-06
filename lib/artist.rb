class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre) #creates a new song
        Song.new(name, self, genre)
    end

    def songs #iterate through all songs and SELECTS songs that belong to artist
        Song.all.select {|song| song.artist  == self}
    end

    def genres #iterate over songs and collects genre of each 
        Song.all.collect {|song| song.genre}
    end
end