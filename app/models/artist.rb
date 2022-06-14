class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #returns the genre of the artists first saved song
    self.genres.first
  end

  def song_count
    #Return the total number of songs associated with the artist.
    self.songs.count
  end

  def genre_count
    #Return the total number of genres associated with the artist.
    self.genres.count
  end
end
