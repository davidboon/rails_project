class RemoveColumnContactsFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :contacts
  end

  def down
    add_column :users, :contacts, :integer
  end
end
