class AddIsMainToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :is_main_cat, :boolean
  end
end
