def bubble_sort(array)
  numSorted = 0
  firstPtr = 1
  secondPtr = 0
  if(array.size == 1)
    return array;
  end

  while array.size != numSorted
    if(firstPtr == numSorted || firstPtr == array.size)
      numSorted += 1
      firstPtr = 1
      secondPtr = 0
    end

    if(array[firstPtr] < array[secondPtr])
      temp = array[firstPtr]
      array[firstPtr] = array[secondPtr]
      array[secondPtr] = temp
    end

    firstPtr += 1
    secondPtr += 1

  end

  return array
end

print bubble_sort([4,3,78,2,0,2])

