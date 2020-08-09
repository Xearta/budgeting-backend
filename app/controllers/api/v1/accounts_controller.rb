class Api::V1::AccountsController < ApplicationController
  def index
    render json: Account.all
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      render json: @account
    else
      render json: {error: 'Error creating account'}
    end
  end

  def show
    @account = Account.find(params[:id])
    render json: @account
  end

  def update
    @account = Account.find(params[:id])
    @account.update(name: params["account"]["name"], planned: params["account"]["planned"])
    @account.save
    render json: @account
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
    render json: @account
  end

  private
  def account_params
    params.require(:account).permit(:name, :planned, :spent, :remaining, :available, :typeOfAccount)
  end
end