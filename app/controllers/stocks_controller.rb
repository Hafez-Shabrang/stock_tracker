class StocksController < ApplicationController

  def search
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        respond_to do |format|
          format.js { render partial:"users/result" }
        end
      end
  end

end
