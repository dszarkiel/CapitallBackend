class Bill < ApplicationRecord 
    belongs_to :user

    validates :name, presence: true
    validates :amount, presence: true
    validates :due_date, presence: true
    # validates :autopay, presence: true

    validate :bill_due_date_cannot_be_in_the_past

    def bill_due_date_cannot_be_in_the_past
      if due_date.present? && due_date < Date.today
        errors.add(:due_date, "can't be in the past, select next due date.")
      end
    end

end
