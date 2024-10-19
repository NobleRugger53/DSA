def Merge_Sort(array)
  size = array.length
  #base case
 if size <= 1 
   return array
 end
  split = size / 2
  #split left half
  left = array[0...split] 
  #split right half
  right = array[split...size]
  #recursive case
  Merge(Merge_Sort(left), Merge_Sort(right))
end
  

def Merge(left, right)
  #indexes for new arrays
  leftIndex  = 0;
  rightIndex = 0;
  #array to put sorted elements
  result = []
  while (leftIndex  < left.size) && (right.size> rightIndex)
    #Right is greater so push left into result
    if(left[leftIndex] <= right[rightIndex])
      result.push(left[leftIndex])
      leftIndex += 1
    else
      #Right is smaller so push right
      result.push(right[rightIndex])
      rightIndex += 1
    end
  end
  #deals with remaining elements in right side array
    while(rightIndex != right.size)
      result.push(right[rightIndex])
      rightIndex += 1
    end
  #deals with remaning elements in right side of array
    while(leftIndex != left.size)
      result.push(left[leftIndex])
      leftIndex += 1
    end
  
return result
end


arr = [3, 2, 1, 13, 8, 5, 0, 1]
puts Merge_Sort(arr).to_s
puts "Should be " + [0, 1, 1, 2, 3, 5, 8, 13].to_s
