class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :qty
      t.integer :image_id
      t.integer :photo_option_id
      t.integer :mat_id
      t.integer :frame_style_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
