def bubblesort(unsorted_array)
  # Initialize index
  sorted = false
  index = 0
  
  # Continue until sorted
  until sorted == true do
    # Compare pair at current index
    num1 = unsorted_array[index]
    num2 = unsorted_array[index + 1]

    # Swap pairs if unsorted and reset index
    if num1.to_i > num2.to_i
      tmp = num1
      unsorted_array[index] = num2
      unsorted_array[index + 1] = tmp
      index = 0
      
    # Increment index if current pair is sorted
    else
      index += 1
    end
    
    # If pairs are sorted thru the length of array, the array is sorted
    if index == unsorted_array.length - 1
      sorted = true
    end
    
  end
  return unsorted_array
end

unsorted_array = [4,3,78,2,0,2]

bubblesort(unsorted_array)

