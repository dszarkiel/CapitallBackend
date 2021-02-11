class Bill < ApplicationRecord 
    belongs_to :user

    validates :name, presence: true
    validates :amount, presence: true
    validates :due_date, presence: true
    # validates :autopay, presence: true
end
