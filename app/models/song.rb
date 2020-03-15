class Song < ActiveRecord::Base
  belongs_to :artist
  validates :title, presence: true
  validates :title, uniqueness: true

  def artist_name
    self.artist.name
  end

  def artist_and_title
    self.artist_name + 
  end
end
