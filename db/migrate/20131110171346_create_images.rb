class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :prod_id
      t.string :title
      t.string :image_url
      t.decimal :price
      t.text :desc

      t.timestamps
    end
  end
end
