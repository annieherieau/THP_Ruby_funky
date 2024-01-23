# frozen_string_literal: true

#
def day_trader(prices_array)
  prices = prices_array
  sorted_prices = prices.sort
  # array of best_buying_day already tested
  best_buying_days = {}
  
  i_max = prices.length-1

  sorted_prices.each do |best_buy|
    i_buy = prices.index(best_buy)
    #best to sell
    best_sell = prices.slice(i_buy , i_max).max
    i_sell = prices.index(best_sell)
    #best deal
    best_deal = best_sell - best_buy

    best_buying_days[best_deal] = [i_buy , i_sell]
  end

  return best_buying_days[best_buying_days.keys.max]

end