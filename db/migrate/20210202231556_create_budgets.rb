class CreateBudgets < ActiveRecord::Migration[6.0]
  def change
    create_table :budgets do |t|
      t.string :name
      t.string :category
      t.integer :amount
      t.integer :user_id
      t.integer :month

      t.timestamps
    end
  end
end
