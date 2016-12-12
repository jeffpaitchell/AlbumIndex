class AddGenreIdFixToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :genre_id, :integer
  end
end
