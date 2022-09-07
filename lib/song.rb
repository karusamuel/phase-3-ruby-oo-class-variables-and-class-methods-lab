class Song
    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    @@count = 0
    @@artists = []
    @@genres = []
  
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count+=1
        @@artists.append(artist)
        @@genres.append(genre)


    end

    def self.count

        return @@count

    end

    def self.artists

        return @@artists.uniq()

    end

    def self.genres

        return @@genres.uniq()

    end

    def self.genre_count
        @genre_count = {}
        @@genres.each do |genre|

            if @genre_count.key? genre
                 @genre_count[genre]+=1
            else
                @genre_count.store(genre,1)
            end
        end
        return @genre_count
    end


    def self.artist_count
        @artist_count = {}
        @@artists.each do |artist|

            if @artist_count.key? artist
                 @artist_count[artist]+=1
            else
                @artist_count.store(artist,1)
            end
        end
        return @artist_count
    end

end