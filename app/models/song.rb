class Song < ActiveRecord::Base
  belongs_to :genre
  belongs_to :artist

  def song_s
    "#{self.name}, by: #{self.artist.name}."
  end
end
