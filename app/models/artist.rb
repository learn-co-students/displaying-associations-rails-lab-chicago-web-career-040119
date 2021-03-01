class Artist < ActiveRecord::Base
  has_many :songs

  def song_count
    self.songs.count
  end

  # def my_songs_titles
  #   self.songs.each do |si|
  #     si.map do |song|
  #       song.title
  #     end
  #   end
  # end
end
