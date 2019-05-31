class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: false, primary_key: :id  do |t|
    	t.primary_key :id
      t.string :name
      t.text :address
      t.string :phone
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
