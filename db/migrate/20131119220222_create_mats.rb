class CreateMats < ActiveRecord::Migration
  def change
    create_table :mats do |t|
      t.string :name
      t.boolean :is_active

      t.timestamps
    end
  end
end
