class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  # def create_song(name, genre)
  #   song = Song.new
  #   song[:artist_id] = self.id
  #   song[:genre_id] = genre.id
  #   song[:name] = name
  #   song.save
  #   song
  # end
  
end
