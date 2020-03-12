require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    d = artists.find_or_create_by(name = 'Drake')
    self.artists.song = self
  end
end