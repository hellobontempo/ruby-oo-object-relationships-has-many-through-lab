class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs #iterate through songs and find songs in that genre
        Song.all.select {|song| song.genre == self}
    end

    def artists #iterate through collect and collect artist with that song
        Song.all.collect {|song| song.artist}
    end

end
    