class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :title
      t.text :description
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
