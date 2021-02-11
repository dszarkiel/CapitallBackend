class BillSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :amount, :due_date, :autopay
end
