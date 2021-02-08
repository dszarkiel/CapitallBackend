class Account < ApplicationRecord
    belongs_to :user
    has_many :transactions

    validates :name, presence: true
    validates :category, presence: true
    validates :balance, presence: true
    validates :balance, numericality: { greater_than_or_equal_to: 0, less_than: 100000000, message: "cannot be greater than $100,000,000" }
end
