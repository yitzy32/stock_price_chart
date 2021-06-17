namespace :slurp do
  desc "TODO"
  task stock_prices: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "nasdaq_screener_1623887625728.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      s = StockPrice.new
      s.symbol = row["symbol"]
      s.name = row["name"]
      s.last_sale = row["last_sale"]
      s.net_change = row["net_change"]
      s.percent_change = row["percent_change"]
      s.market_cap = row["market_cap"]
      s.country = row["country"]
      s.ipo_year = row["ipo_year"]
      s.volume = row["volume"]
      s.sector = row["sector"]
      s.industry = row["industry"]
      s.save
      puts "There are #{StockPrice.count} rows in the db."
    end
  end
end
