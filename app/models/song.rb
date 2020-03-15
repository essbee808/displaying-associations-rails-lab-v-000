class Song < ActiveRecord::Base
  belongs_to :artist
  validates :title, presence: true
  validates :title, uniqueness: true

  def artist_name
    artist = Song.find_by(self.artist_id)
    artist.name
  end

end
