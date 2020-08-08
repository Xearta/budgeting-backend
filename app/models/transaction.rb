class Transaction < ApplicationRecord
  belongs_to :account
  validates :amount, presence: true
  validates_inclusion_of :typeOfTransaction, :in => ['deposit', 'withdraw']
end
