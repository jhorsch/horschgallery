class CreateImageFrameStyles < ActiveRecord::Migration
  def change
    create_table :image_frame_styles do |t|
      t.integer :image_id
      t.integer :frame_style_id

      t.timestamps
    end
  end
end
