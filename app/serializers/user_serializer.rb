class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :date_of_birth, :email, :address, :address_two, :city, :state, :zipcode, :avg_monthly_income
  has_many :accounts
  has_many :transactions, through: :accounts
  has_many :budgets
  has_many :goals
  has_many :bills

end
