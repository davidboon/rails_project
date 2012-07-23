class RemoveUserTypeFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :user_type
  end

  def down
    add_column :users, :user_type, :integer
  end
end
