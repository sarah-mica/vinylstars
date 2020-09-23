class CreateCategorizations < ActiveRecord::Migration[5.2]
  def change
    create_table :categorizations do |t|
      t.integer :source_id
      t.string :source_type
      t.integer :category_id

      t.timestamps
    end
  end
end
