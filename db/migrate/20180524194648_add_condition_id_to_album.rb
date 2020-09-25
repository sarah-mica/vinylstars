class AddConditionIdToAlbum < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :condition_id, :integer
  end
end
