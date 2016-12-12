class AddMoreSongsToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :song11, :string
    add_column :albums, :song12, :string
    add_column :albums, :song13, :string
    add_column :albums, :song14, :string
    add_column :albums, :song15, :string
    add_column :albums, :song16, :string
    add_column :albums, :song17, :string
    add_column :albums, :song18, :string
  end
end
