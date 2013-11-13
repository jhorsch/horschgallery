class AddSubCatToImages < ActiveRecord::Migration
  def change
    add_column :images, :sub_cat, :string
  end
end
