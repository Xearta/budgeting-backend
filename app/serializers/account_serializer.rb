class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :planned, :spent, :remaining, :available, :typeOfAccount
  has_many :transactions
end
