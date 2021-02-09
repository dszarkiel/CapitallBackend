class Budget < ApplicationRecord
    belongs_to :user
    has_many :transactions

    validates :name, presence: true
    validates :category, presence: true
    validates :amount, presence: true
    validates :amount, numericality: { greater_than: 0, less_than: 100000, message: "cannot be $0 or greater than $100,000" }
end
