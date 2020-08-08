class Api::V1::TransactionsController < ApplicationController
  before_action :set_account

  # api/v1/accounts/1/transactions
  def index
    render json: @account.transactions
  end

  def create
    @transaction = @account.transactions.new(transaction_params)
    if @account.update_balance(@transaction) != 'Balance too low.'
      @transaction.save
      render json: @transaction
    else
      render json: {error: 'Balance too low for transaction'}
    end
  end

  def show
    @transaction = Transaction.find(params[:id])
    render json: @transaction
  end

  def destroy
    # Reverse the transaction
    # Remove the transaction
  end


  def set_account
    @account = Account.find(params[:account_id])
  end

  private
  def transaction_params
    params.require(:transaction).permit(:account_id, :amount, :typeOfTransaction, :date, :description)
  end
end
