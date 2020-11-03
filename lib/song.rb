class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre
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
    def self.genre_count
        genre_ct = {}
        @@genres.map {|type|genre_ct[type] = @@genres.count(type)}
        genre_ct
    end
    def self.artist_count
        artist_ct = {}
        @@artists.map {|name|artist_ct[name] = @@artists.count(name)}
        artist_ct
    end
end