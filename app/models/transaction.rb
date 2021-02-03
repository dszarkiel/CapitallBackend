class Transaction < ApplicationRecord
    has_one :user, through: :account
    belongs_to :account
    belongs_to :budget, optional: true
    belongs_to :goal, optional: true
end
