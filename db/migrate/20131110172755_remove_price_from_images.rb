class RemovePriceFromImages < ActiveRecord::Migration
  def change
    remove_column :images, :price, :decimal
  end
end
