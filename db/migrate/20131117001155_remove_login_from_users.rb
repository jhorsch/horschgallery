class RemoveLoginFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :login, :string
    remove_column :users, :string, :string
  end
end
