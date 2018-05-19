require 'stock_quote'

print '원하는 NASDAQ 주식의 심볼을 입력하세요: '
input = gets.chomp

stock = StockQuote::Stock.quote(input)
puts stock.company_name
puts stock.latest_price
