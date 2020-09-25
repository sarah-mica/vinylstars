class AddThumbnailToAlbums < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :thumbnail, :string
  end
end
