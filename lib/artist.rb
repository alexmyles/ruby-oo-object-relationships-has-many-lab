class Artist
    attr_accessor :name
    @@songs_count = 0
    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        self.songs << song
        song.artist = self
        @@songs_count += 2
    end

    def add_song_by_name(name)
        song = Song.new(name)
        self.songs << song
        song.artist = self
        @@songs_count += 2
    end
    
    def songs 
        Song.all.select {|song| song.artist == self}
    end

    def self.song_count
        @@songs_count
    end
end
