class Goal < ApplicationRecord
    belongs_to :user
    has_many :transactions

    validates :name, presence: true
    validates :description, presence: true
    validates :amount, presence: true
    validates :amount, numericality: { greater_than_or_equal_to: 0, less_than: 100000000, message: "cannot be greater than $100,000,000" }
    validates :due_date, presence: true
    validates_format_of :due_date, :with =>/\d{4}\-\d{2}\-\d{2}/, :message => "must be in the following format: mm/dd/yyyy"
end
