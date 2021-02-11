class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.integer :user_id
      t.string :name
      t.float :amount
      t.date :due_date
      t.boolean :autopay

      t.timestamps
    end
  end
end
