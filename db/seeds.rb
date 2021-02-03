User.destroy_all
Account.destroy_all
Transaction.destroy_all
Budget.destroy_all
# Goal.destroy_all

user1 = User.create(first_name: "Dominik", last_name: "Szarkiel", date_of_birth: Date.new(1995, 11, 17), email: "dom@gmail.com", address: "123 Ave, Streamwood IL 60107", avg_monthly_income: 4000, password:"abc")

account1 = Account.create(name: "Chase", balance: 6320.34, category: "checking", user_id: user1.id)
account2 = Account.create(name: "Student Loan", balance: 2549.84, category: "loan", user_id: user1.id)

budget1 = Budget.create(name: "Groceries", category: "Shopping", amount: 250, user_id: user1.id, month: 01)

# goal1 = Goal.create(name: "Vacation", description: "Go to Italy", amount: 3000, due_date: Date.new(2021, 06, 01), user_id: user1.id)


transaction1 = Transaction.create(date: Date.new(2021, 01, 15), description: "Groceries - Marianos", amount: 59.12, budget_id: budget1.id, account_id: account1.id)
transaction2 = Transaction.create(date: Date.new(2021, 01, 14), description: "Gas - Costco", amount: 32.11, account_id: account1.id)
transaction3 = Transaction.create(date: Date.new(2021, 01, 13), description: "Loan Pmt - Student Loan", amount: 32.45, account_id: account1.id, to_account_id: account2.id)