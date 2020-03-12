class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if artist.all.include?('Drake')
      self.artist_id = drake.id
    else
      drake = Artist.new('Drake')
      self.artist_id = drake.id
    end 
  end
end