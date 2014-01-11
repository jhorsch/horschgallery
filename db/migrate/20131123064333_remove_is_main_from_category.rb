class RemoveIsMainFromCategory < ActiveRecord::Migration
  def change
    remove_column :categories, :is_main_cat, :boolean
    add_column :categories, :main_cat, :string
  end
end
