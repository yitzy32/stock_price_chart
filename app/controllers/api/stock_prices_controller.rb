class Api::StockPricesController < ApplicationController
  def index
    @stock_prices = StockPrice.all
    @search_term = []
    @stock_prices.each do |stock_price|
      if stock_price["name"].downcase.include? params[:name]
        @search_term << stock_price
      end
    end
    render "index.json.jb"
  end
end
