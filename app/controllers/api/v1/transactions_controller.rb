class Api::V1::TransactionsController < ApplicationController
  before_action :set_account, except: [:destroy]

  # api/v1/accounts/1/transactions
  def index
    render json: @account.transactions
  end

  def create
    @transaction = @account.transactions.new(transaction_params)
    @transaction.date = DateTime.now

    if @account.update_spent(@transaction) != 'Transaction Failed.'
      @transaction.save
      render json: @account
    else
      render json: {error: 'Balance too low for transaction'}
    end
  end

  def show
    @transaction = Transaction.find(params[:id])
    render json: @transaction
  end

  # def destroy
  #   # Find transaction and account
  #   @transaction = Transaction.find(params['id'])
  #   @account = Account.find(@transaction.account_id)
  #   # Check if you can reverse the transaction
  #   if @account.update_balance_on_delete(@transaction)
  #     # Remove the transaction
  #     @transaction.destroy
  #     render json: @account
  #   else
  #     render json: {error: 'Balance too low to reverse this transaction.'}
  #   end
  # end



  def set_account
    @account = Account.find(params[:account_id])
  end

  private
  def transaction_params
    params.require(:transaction).permit(:account_id, :amount, :typeOfTransaction, :date, :description)
  end
end
