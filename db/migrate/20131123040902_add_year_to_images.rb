class AddYearToImages < ActiveRecord::Migration
  def change
    add_column :images, :year_taken, :integer
  end
end
