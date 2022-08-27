require ("pry")
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists <<artist
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

    #tally: counts and returns the occurence of each element
    #in a hash form, with elements as keys and corresponding counts as values.
    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end
amilli = Song.new("amilli", "Lil Wayne", "Hip-Hop")
binding.pry