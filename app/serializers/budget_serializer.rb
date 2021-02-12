class BudgetSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :amount, :user_id
  has_many :transactions
end
