class AddColumnUserTypeAndValidationToUser < ActiveRecord::Migration
  def change
    add_column :users, :user_type, :integer, :limit => 4
  end
end
