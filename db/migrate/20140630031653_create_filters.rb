class CreateFilters < ActiveRecord::Migration
  def change
    create_table :filters do |t|
      t.integer :filter_id
      t.integer :user_id
      t.integer :sensor_id
      t.string :name
      t.integer :status
      t.string :address
      t.float :lat
      t.float :lon
      t.integer :contractor_id
      t.integer :hvac_id
      t.datetime :prev_request
      t.float :price
      t.boolean :delivered, :default => false
      t.timestamps
    end
    add_index :filters, :filter_id, unique: true
	add_index :filters, :contractor_id, unique: true
	add_index :filters, :hvac_id, unique: true
	add_index :filters, :user_id, unique: true 
	add_index :filters, :status 
  end
end