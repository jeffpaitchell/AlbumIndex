class AddGenreIdToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :album_id, :integer
  end
end
