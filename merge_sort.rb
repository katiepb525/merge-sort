require 'pry-byebug'

def merge_sort(arr)
  #base case
  # now our length is down to one. nice! lets return the element inside
  return arr if arr.length < 2

  #recursive case
  #first, lets divide the array in half
  mid = arr.length / 2
  # define left arr
  left = merge_sort(arr[0.. mid - 1])
  # define right arr
  right = merge_sort(arr[mid.. -1])

  # lets merge our arrays together...
  merge(left, right)
  
end

def merge(left, right, sorted = [])
  # lets merge our arrays back together :)
  # while or b have elements
  until left.empty? || right.empty?
    if left[0] < right[0]
      sorted.push(left[0])
      p "left: #{left[0]}"
      left.slice!(0)
    else
      sorted.push(right[0])
      p "right: #{right[0]}"
      right.slice!(0)
    end
  end
  p "someone's empty!"
  p left
  p right
  p sorted
  sorted + left + right
end

p merge_sort([5,6,1,2])