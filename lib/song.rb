require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @@artists << @artist = artist
        @@genres << @genre = genre
        @@count += 1
        @@all << self
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.all
        @@all
    end

    def self.genre_count
        # returns hash of genres and the 
        # number of songs that have those genres
        genre_hash = {}

        @@genres.each do |genre|
            if !genre_hash[genre]
                genre_hash[genre] = 1
            else
                genre_hash[genre] += 1
            end
        end
        genre_hash
    end

    def self.artist_count
        # returns hash of genres and the 
        # number of songs that have those genres
        artist_hash = {}

        @@artists.each do |artist|
            if !artist_hash[artist]
                artist_hash[artist] = 1
            else
                artist_hash[artist] += 1
            end
        end
        artist_hash
    end
end