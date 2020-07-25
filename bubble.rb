def bubble_sort elements
    loop do
      iter = 1
      flag = true
      elements.each_with_index do |e, i|
        if i >= elements.length - iter
          #do nothing
        elsif e > elements[i+1]
          elements[i] = elements[i+1]
          elements[i+1] = e
          flag = false
        end
      end
      if (flag) 
        return elements
      end
      iter += 1
    end
  end
  
  p bubble_sort [5,1,4,2,8]