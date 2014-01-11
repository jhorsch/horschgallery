class CreatePhotographers < ActiveRecord::Migration
  def change
    create_table :photographers do |t|
      t.string :firstname
      t.string :lastname
      t.string :city
      t.integer :year_started
      t.text :bio
      t.boolean :is_active
      t.string :website
      t.string :title
      t.string :quote1
      t.string :quote2
      t.string :quote3

      t.timestamps
    end
  end
end
