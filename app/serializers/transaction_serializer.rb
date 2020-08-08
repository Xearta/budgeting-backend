class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :typeOfTransaction, :date, :description
end
