class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  # Self is a song instance with a id, name, artist id and genre id. .genre will then show
  # A genre instance, which you can call name on.
  def get_genre_name
    self.genre.name
  end

  # When making a new artist
  def drake_made_this
    drake = Artist.find_or_create_by(name: "Drake")
    self.artist = drake
  end
end
