class AddxToImages < ActiveRecord::Migration
  def change

    add_column :images, :homepage_rank, :integer
    add_column :images, :is_original, :boolean
    add_column :images, :is_active, :boolean
    add_column :images, :format_id, :integer
    add_column :images, :photographer_id, :integer
    remove_column :images, :is_homepage, :integer




  end
end
