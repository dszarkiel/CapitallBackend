class BudgetSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :amount, :user_id, :month
  has_many :transactions
end
