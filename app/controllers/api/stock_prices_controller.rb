class Api::StockPricesController < ApplicationController
  def index
    @stock_prices = StockPrice.where(name: params[:name])
    render "index.json.jb"
  end
end
