class AddMoreDecimalPlacesToLastSale < ActiveRecord::Migration[6.1]
  def change
    change_column :stock_prices, :last_sale, :decimal, precision: 17, scale: 11
  end
end
