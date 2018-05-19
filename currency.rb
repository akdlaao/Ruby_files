require 'eu_central_bank'

bank = EuCentralBank.new

bank.update_rates

rate = bank.exchange(100, "USD", "KRW")

puts rate