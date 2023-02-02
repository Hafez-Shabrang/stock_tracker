class UserStocksController < ApplicationController

  def create
    stock_name = Stock.find(params[:stock]).ticker
    stock = Stock.new_lookup(stock_name)
    @user_stock = UserStock.create(user: current_user, stock: stock)
    redirect_to my_portfolio_path
  end

  def destroy
    @stock = UserStock.where(user_id: current_user.id, stock_id: params[:id]).first
    if @stock.destroy
      redirect_to my_portfolio_path
    end
  end

end
