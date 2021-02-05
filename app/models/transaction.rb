class Transaction < ApplicationRecord
    belongs_to :account
    has_one :user, through: :account
    belongs_to :budget, optional: true
    belongs_to :goal, optional: true
end
