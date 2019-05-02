class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def art_title_format
    "#{artist_name} - #{self.title}"
  end
end
