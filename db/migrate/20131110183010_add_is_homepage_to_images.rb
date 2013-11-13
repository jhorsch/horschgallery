class AddIsHomepageToImages < ActiveRecord::Migration
  def change
    add_column :images, :is_homepage, :boolean
  end
end
