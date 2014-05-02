class CreateSiteSettings < ActiveRecord::Migration
  def change
    create_table :site_settings do |t|
      t.string :title
      t.string :subtitle

      t.timestamps
    end
  end
end
