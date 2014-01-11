class CreateImageOptions < ActiveRecord::Migration
  def change
    create_table :image_options do |t|
      t.string :name
      t.string :price
      t.string :feed_identifier
      t.boolean :is_active
      t.integer :format_id

      t.timestamps
    end
  end
end
