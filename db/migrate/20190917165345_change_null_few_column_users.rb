class ChangeNullFewColumnUsers < ActiveRecord::Migration
  
  # INI DEFAULT akan terbantuk pas awal migrasi
  # def change
  #     change_column_null :users, :address, true, :default => "" 
  # end

  def down
    change_column_null :users, :address, true, :default => "" 
  end

    # OK -> TESTED
  # def down
  #   change_column_null :users, :is_active, false, :default => 1 
  # end

  # kalau mau pake def up dan def down
end
