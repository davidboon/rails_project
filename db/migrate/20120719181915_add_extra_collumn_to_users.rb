class AddExtraCollumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :full_name, :string
    add_column :users, :contacts, :integer
    add_column :users, :user_type, :integer, :limit => 4
  end
end
