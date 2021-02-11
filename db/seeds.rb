User.destroy_all
Account.destroy_all
Transaction.destroy_all
Budget.destroy_all
# Goal.destroy_all

user1 = User.create(first_name: "Dominik", last_name: "Szarkiel", date_of_birth: Date.new(1995, 11, 17), email: "dom@gmail.com", address: "123 Ave", city: "Streamwood", state:"IL", zipcode:"60107", avg_monthly_income: 4000, password:"abc")
user2 = User.create(first_name: "Dominik", last_name: "Szarkiel", date_of_birth: Date.new(1995, 11, 17), email: "dominik@gmail.com", address: "123 Ave", city: "Streamwood", state:"IL", zipcode:"60107", avg_monthly_income: 4000, password:"abc")

account1 = Account.create(name: "Chase", balance: 6320.34, category: "Checking", user_id: user1.id)
account2 = Account.create(name: "Student Loan", balance: 2549.84, category: "Loan", user_id: user1.id)

account3 = Account.create(name: "Student Loan", balance: 2549.84, category: "Loan", user_id: user2.id)

budget1 = Budget.create(name: "Groceries", category: "Shopping", amount: 250, user_id: user1.id, month: 01)
budget2 = Budget.create(name: "Car", category: "Auto & Transport", amount: 150, user_id: user1.id, month: 01)
budget3 = Budget.create(name: "Bills", category: "Bills & Utilities", amount: 250, user_id: user1.id, month: 01)
budget4 = Budget.create(name: "Fun Stuff", category: "Entertainment", amount: 150, user_id: user1.id, month: 01)

budget5 = Budget.create(name: "Fun Stuff", category: "Entertainment", amount: 150, user_id: user2.id, month: 01)

goal1 = Goal.create(name: "Vacation", description: "Go to Italy", amount: 3000, due_date: Date.new(2021, 06, 01), complete: false, user_id: user1.id)
goal2 = Goal.create(name: "Down Payment", description: "House Down Payment", amount: 20000, due_date: Date.new(2021, 06, 01), complete: false, user_id: user1.id)

bill1 = Bill.create(name: "Phone Bill", amount: 95.45, due_date: Date.new(2021, 02, 13), autopay: false, user_id: user1.id)

transaction1 = Transaction.create(date: Date.new(2021, 02, 5), description: "Groceries - Marianos", category:"Shopping", amount: 59.12, budget_id: budget1.id, account_id: account1.id)
transaction2 = Transaction.create(date: Date.new(2021, 02, 4), description: "Gas - Costco", category:"Auto & Transport", amount: 32.11, account_id: account1.id)
transaction3 = Transaction.create(date: Date.new(2021, 02, 9), description: "Loan Pmt - Student Loan", category:"Bills & Utilities", amount: 32.45, account_id: account1.id, to_account_id: account2.id)
transaction4 = Transaction.create(date: Date.new(2021, 02, 5), description: "Groceries - Marianos", category:"Shopping", amount: 59.12, budget_id: budget1.id, account_id: account1.id)
transaction5 = Transaction.create(date: Date.new(2021, 02, 4), description: "Gas - Costco", category:"Auto & Transport", amount: 32.11, account_id: account1.id)
transaction6 = Transaction.create(date: Date.new(2021, 02, 3), description: "Loan Pmt - Student Loan", category:"Bills & Utilities", amount: 32.45, account_id: account1.id, to_account_id: account2.id)
transaction7 = Transaction.create(date: Date.new(2021, 02, 2), description: "Groceries - Marianos", category:"Shopping", amount: 59.12, budget_id: budget1.id, account_id: account1.id)
transaction8 = Transaction.create(date: Date.new(2021, 02, 6), description: "Gas - Costco", category:"Auto & Transport", amount: 32.11, account_id: account1.id)
transaction9 = Transaction.create(date: Date.new(2021, 02, 1), description: "Loan Pmt - Student Loan", category:"Bills & Utilities", amount: 32.45, account_id: account1.id, to_account_id: account2.id)

transaction10 = Transaction.create(date: Date.new(2021, 02, 1), description: "Loan Pmt - Student Loan", category:"Bills & Utilities", amount: 32.45, account_id: account3.id, to_account_id: account3.id)
transaction11 = Transaction.create(date: Date.new(2021, 02, 1), description: "Loan Pmt - Student Loan", category:"Bills & Utilities", amount: 32.45, account_id: account3.id, to_account_id: account3.id)