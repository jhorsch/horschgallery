class CreateFrameStyles < ActiveRecord::Migration
  def change
    create_table :frame_styles do |t|
      t.string :name
      t.boolean :is_active

      t.timestamps
    end
  end
end
