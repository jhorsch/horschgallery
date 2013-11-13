class AddMainCatToImages < ActiveRecord::Migration
  def change
    add_column :images, :main_cat, :string
  end
end
