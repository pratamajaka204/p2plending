class AddDefaultNullToIsActiveUsers < ActiveRecord::Migration
  def down
    change_column_null :users, :is_active, true, :default => 1 
  end

  
end
