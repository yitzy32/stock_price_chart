class AddDecimalPlacesToLastSale < ActiveRecord::Migration[6.1]
  def change
    change_column :stock_prices, :last_sale, :decimal, precision: 6, scale: 2
  end
end
