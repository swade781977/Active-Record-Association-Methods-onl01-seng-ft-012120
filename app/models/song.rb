require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    song.artists_id.each do |i|
      if artists()
  end
end