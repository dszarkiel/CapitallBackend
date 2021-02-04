class AddDetailsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :address_two, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zipcode, :string
  end
end
