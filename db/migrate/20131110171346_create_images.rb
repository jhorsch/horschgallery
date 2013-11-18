class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :prod_id
      t.string :title
      t.string :main_category
      t.string :sub_category
      t.string :image_url
      t.integer :price
      t.text :desc
      t.boolean :on_homepage

      t.timestamps
    end
  end
end
