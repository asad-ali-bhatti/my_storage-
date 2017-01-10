class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :storage_id
      t.integer :item_type

      t.timestamps
    end
  end
end
