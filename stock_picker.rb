
def stock_picker(arr)
  top = arr.max
  bottom = arr.min

    if top == arr[0]
      top = arr.sort[-2]
    end
    
    if bottom == arr[-1]
    bottom = arr.sort[1]
    end

  top_index = arr.find_index(top) 
  bottom_index = arr.find_index(bottom)


    while top_index.to_i < bottom_index.to_i
      i = -1
      bottom_index = arr.sort[i + 1]
    end
 
  top_index = arr[top_index]
  bottom_index = arr[bottom_index]

  total = top_index.to_i - bottom_index.to_i

  puts "[#{bottom_index}, #{top_index}]"
  puts "You bought stock at $#{bottom_index}.00 per share and sold at $#{top_index}.00 per share for a $#{total}.00 per share profit!"


end

stock_picker([17,3,6,9,15,8,6,1,10])
# => [3, 15]
# => You bought stock at $3.00 per share and sold at $15.00 per share for a $12.00 per share profit!
