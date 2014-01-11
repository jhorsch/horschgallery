class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :title
      t.text :marketing_copy
      t.boolean :is_active
      t.string :meta_title
      t.string :meta_desc
      t.string :image_caption
      t.boolean :run_feed
      t.boolean :convert_bw_option
      t.timestamps
    end
  end
end
