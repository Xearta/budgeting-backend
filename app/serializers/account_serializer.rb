class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :balance, :typeOfAccount
  has_many :transactions
end
