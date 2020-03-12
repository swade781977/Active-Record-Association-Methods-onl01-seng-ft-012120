require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if artists.exists?(name: 'Drake')
      artists.find_by name: 'Drake'
      self.artist_id = d.id
    else
      d = atrists.create('Drake')
      self.artist_id = d.id
    binding.pry
  end
end