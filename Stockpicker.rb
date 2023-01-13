def stock_picker(stocks)
  # Initialize local variables
  buy_index = 0
  sell_index = 0
  highest_profit = 0
  highest_profit_pair = [0, 0]

  # Iterate over each buy and sell index
  for buy_index in 0..stocks.length
    for sell_index in buy_index..stocks.length
      # Calculate profit at current index as integer
      current_profit = stocks[sell_index].to_i - stocks[buy_index].to_i

      # Update highest profit index pairing
      if current_profit > highest_profit
        highest_profit = current_profit
        highest_profit_pair = [buy_index, sell_index]
      end
    end
  end

  # FOR DEBUGGING
  # print highest_profit_pair
  return highest_profit_pair
end

stocks = [17,3,6,9,15,8,6,1,10]

stock_picker(stocks)