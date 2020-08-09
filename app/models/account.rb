class Account < ApplicationRecord
  has_many :transactions
  validates :name, :balance, presence: true


  def update_balance(transaction)
    if transaction.typeOfTransaction == 'deposit'
      self.balance += transaction.amount
      self.save
    elsif transaction.typeOfTransaction == 'withdraw'
      if self.balance >= transaction.amount
        self.balance -= transaction.amount
        self.save
      else
        return 'Balance too low.'
      end
    end
  end


  def update_balance_on_delete(transaction)
    if transaction.typeOfTransaction == 'deposit'
      if self.balance >= transaction.amount
        self.balance -= transaction.amount
        self.save
      else
        return 'Balance too low.'
      end
    elsif transaction.typeOfTransaction == 'withdraw'
      self.balance += transaction.amount
      self.save
    end
  end

end