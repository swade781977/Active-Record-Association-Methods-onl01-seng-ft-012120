require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if Artist.name.include?('Drake')
      
      self.artist_id = d.id
    else
      d = Artist.new('Drake')
    binding.pry
  end
end