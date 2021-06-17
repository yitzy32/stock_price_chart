class CreateStockPrices < ActiveRecord::Migration[6.1]
  def change
    create_table :stock_prices do |t|
      t.string :symbol
      t.string :name
      t.decimal :last_sale, precision: 5, scale: 2
      t.decimal :net_change, precision: 5, scale: 2
      t.decimal :percent_change, precision: 6, scale: 3
      t.bigint :market_cap
      t.string :country
      t.integer :ipo_year
      t.integer :volume
      t.string :sector
      t.string :industry

      t.timestamps
    end
  end
end
