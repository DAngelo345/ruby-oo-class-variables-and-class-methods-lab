require "pry"
class Song

    @@count = 0
    @@genres = []
    @@artists = []
    @@artist_count = {}
    @@genre_count = {}

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @@artists << artist
        @@genres << genre
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
    end
    
    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end
    
    def self.genre_count
       
        @@genres.each do |g|
            if @@genre_count[g]  
                @@genre_count[g] += 1
            else
           @@genre_count[g] = 1
           end
        end
        @@genre_count
    end

    def self.artist_count

        @@artists.each do |s|
      
            if @@artist_count[s]
                @@artist_count[s] += 1
            else
                @@artist_count[s] = 1
            end
        end
        @@artist_count
    end


end