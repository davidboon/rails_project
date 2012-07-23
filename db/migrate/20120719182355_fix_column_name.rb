class FixColumnName < ActiveRecord::Migration
  def up
	rename_column :users, :name, :user_name
  end

  def down
	
  end
end
