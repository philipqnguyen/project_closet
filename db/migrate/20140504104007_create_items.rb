class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :user_id
      t.string :item_name
      t.string :item_type
      t.string :item_color
      t.date :item_date_owned
      t.integer :quantity
      t.string :size

      t.timestamps
    end
  end
end
