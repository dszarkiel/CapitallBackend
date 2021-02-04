class User < ApplicationRecord
    has_secure_password
    has_many :accounts
    has_many :transactions, through: :accounts 
    has_many :budgets
    has_many :goals

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :avg_monthly_income, presence: true
    validates :avg_monthly_income, numericality: {greater_than: 0}
    validates :email, uniqueness: true
    validates :zipcode, presence: true

end
