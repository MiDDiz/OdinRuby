def stock_picker stock_prices
    # This vars hold the maximun relatives values and places for the stocks.
    best_value = 0
    max_index = [0,0]
  
    # As we need to get not only the maximum profit but the days we need to buy/sell, we keep track of the indexes as variables that will mutate as the loop continues. 
    # my_index will hold the index of the stock that we are comparing with the others. 
    # Array#index[value] cannot be used here because will cause undefinde behaviour if there are repeated values.
    my_index = 0
  
    stock_prices.each do |my_stock|
      # a_index will be the stock that we compare to my_stock in order to get the relative best_value.
      a_index = 0
      stock_prices.each do |a_stock|
  
        # We cant sell something before we buy it so if the relative index is lower than the index of the stock we are comparing then we have to pass. 
        if not a_index <= my_index
          # Local variable in order to store the relativa value between stocks.
          my_value = a_stock - my_stock
          # And if our relative value is more than our best value we switch them over and hold the new indexes as max_indexes.
          if my_value > best_value
            best_value = my_value
            max_index = [my_index, a_index]
          end
        end
        a_index +=1
      end
      my_index += 1;
    end
    max_index 
  end
  
  p stock_picker([17,3,6,9,15,8,6,1,10])
  p stock_picker([10,3,9,2,7,6,5])
  p stock_picker([3,5,9,2,3,14,1])
  p stock_picker([42,33,5,16,8,7,4,5,1])