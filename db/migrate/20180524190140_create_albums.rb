class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.integer :artist_id
      t.string :title
      t.string :year
      t.string :record_condition

      t.timestamps
    end
  end
end
