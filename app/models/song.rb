require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    songs.artists_id.each do |i|
      artists.find(i)
      binding.pry
    end
  end
end