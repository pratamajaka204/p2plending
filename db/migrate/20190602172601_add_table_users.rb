class AddTableUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
      t.string :name
      t.text :address
      t.boolean :is_active
 
      t.timestamps
    end
  
  end
end
