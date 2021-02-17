class AddPaidBooleanToBills < ActiveRecord::Migration[6.0]
  def change
    add_column :bills, :paid, :boolean
  end
end
