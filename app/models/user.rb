class User < ApplicationRecord
    has_many :accounts
    has_many :transactions, through: :accounts 
    has_many :budgets
    has_many :goals

    has_secure_password
end
