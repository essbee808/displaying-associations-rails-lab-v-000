class Song < ActiveRecord::Base
  belongs_to :artist
  validates :title, presence: true
  validates :title, uniqueness: true

  def artist_name
    self.artist.name
  end

end
