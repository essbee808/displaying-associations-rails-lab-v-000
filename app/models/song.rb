require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  validates :title, presence: true
  validates :title, uniqueness: true

  def artist_name
    artist = Artist.find_by(self.artist_id)
    binding.pry
    return artist.name
  end

end
