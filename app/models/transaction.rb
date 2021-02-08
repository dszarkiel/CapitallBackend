class Transaction < ApplicationRecord
    belongs_to :account
    has_one :user, through: :account
    belongs_to :budget, optional: true
    belongs_to :goal, optional: true

    validates :account_id, presence: { message: "is needed. Please select which account the transaction is from." }
    validates :date, presence: true
    validates_format_of :date, :with =>/\d{4}\-\d{2}\-\d{2}/, :message => "must be in the following format: mm/dd/yyyy"
    validates :description, presence: true
    validates :category, presence: true
    validates :amount, presence: true
    validates :amount, numericality: { greater_than_or_equal_to: 0, less_than: 100000000, message: "cannot be greater than $100,000,000" }

end
