class Account < ApplicationRecord
  has_many :transactions
  validates :name, :planned, presence: true


  def update_spent(transaction)
    if transaction.typeOfTransaction == 'income'
      self.spent -= transaction.amount
      self.remaining += transaction.amount
      self.save
    elsif transaction.typeOfTransaction == 'expense'
        self.spent += transaction.amount
        self.remaining -= transaction.amount
        self.save
    else
      return 'Transaction Failed.'
    end
  end


  # def update_balance_on_delete(transaction)
  #   if transaction.typeOfTransaction == 'deposit'
  #     if self.balance >= transaction.amount
  #       self.balance -= transaction.amount
  #       self.save
  #     else
  #       return 'Balance too low.'
  #     end
  #   elsif transaction.typeOfTransaction == 'withdraw'
  #     self.balance += transaction.amount
  #     self.save
  #   end
  # end

end