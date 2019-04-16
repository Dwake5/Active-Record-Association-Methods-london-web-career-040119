class AddGenreToSongs < ActiveRecord::Migration[5.2]
    add_column :songs, :genre_id, :integer
  end
end
