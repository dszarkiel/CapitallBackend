class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.date :date
      t.string :description
      t.float :amount
      t.integer :budget_id
      t.integer :account_id
      t.integer :to_account_id
      t.integer :goal_id

      t.timestamps
    end
  end
end
