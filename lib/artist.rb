class Artist

attr_accessor :name, :songs

@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def add_song(song)
        if song.artist == nil
            song.artist = self
          else
            nil
          end
          if songs.include?(song)
            nil
          else
            songs << song
          end
          song
    end

    def self.find_or_create_by_name(name)
        if @@all.find {|a| a.name == name}
            @@all.find {|a| a.name == name}
        else
            Artist.new(name)
        end
  end

  def print_songs
    self.songs.each do |song|
        puts "#{song.name}"
    end
end
end