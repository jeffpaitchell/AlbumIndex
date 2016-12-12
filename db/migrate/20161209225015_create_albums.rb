class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.string :song1
      t.string :song2
      t.string :song3
      t.string :song4
      t.string :song5
      t.string :song6
      t.string :song7
      t.string :song8
      t.string :song9
      t.string :song10

      t.timestamps
    end
  end
end
