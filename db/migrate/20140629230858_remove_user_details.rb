class RemoveUserDetails < ActiveRecord::Migration
  def change
  	remove_column :users, :user_id, :string
  	remove_column :users, :first_name, :string
  	remove_column :users, :last_name, :string
  	remove_column :users, :address, :string
  	remove_column :users, :phone_number, :string
  	remove_column :users, :city, :string
  	remove_column :users, :state, :string
  	remove_column :users, :zip, :string
  end
end
