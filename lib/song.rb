class Song

attr_accessor :name, :artist

@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(file)
        new_song = self.new(file.split(" - ")[1])
        new_song.artist_name=(file.split(" - ")[0])
        new_song
    end

    def artist_name=(artist_name)
        self.artist = Artist.find_or_create_by_name(artist_name)
    end
end