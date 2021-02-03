class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :email
      t.string :address
      t.integer :avg_monthly_income
      t.string :password_digest

      t.timestamps
    end
  end
end
