class Account < ApplicationRecord
  has_many :transactions
  validates :name, :balance, presence: true


  def update_balance(transaction)
    if transaction.kind == 'deposit'
      self.balance += transaction.amount
    elsif transaction.kind == 'withdraw'
      if self.balance >= transaction.amount
        self.balance -= transaction.amount
      else
        return 'Balance too low.'
      end
    end

    self.save
end
