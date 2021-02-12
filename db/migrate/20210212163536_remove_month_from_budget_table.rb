class RemoveMonthFromBudgetTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :budgets, :month
  end
end
