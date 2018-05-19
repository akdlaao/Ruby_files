require 'eu_central_bank'
require 'stock_quote'

print '원하는 NASDAQ 주식의 심볼을 입력하세요: '
input = gets.chomp

stock = StockQuote::Stock.quote(input)

bank = EuCentralBank.new

bank.update_rates

rate = bank.exchange(100, "USD", "KRW")

usd = stock.latest_price
krw = usd*rate

puts "#{stock.company_name} 의 가격은 ￦#{krw}"