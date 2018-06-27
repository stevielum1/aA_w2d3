class Array
  def uniq
    result = []
    self.each { |el| result << el unless result.include?(el) }
    result
  end  
  
  def two_sum
    results = []
      (0...self.length).each do |i|
        (i+1...self.length).each do |j|
          results << [i,j] if self[i] + self[j] == 0
        end
      end
    results
  end
end

def my_transpose(arr)
  raise ArgumentError unless arr.is_a?(Array)
  results = Array.new(arr.length) {Array.new}
  
  arr.each do |row|
    row.each_with_index do |el,idx|
      results[idx] << el 
    end
  end
  results
end

def stock_picker(arr)
  raise ArgumentError unless arr.is_a?(Array)
  highest = 0
  start_day = nil
  end_day = nil
  
  (0...arr.length).each do |i|
    (i+1...arr.length).each do |j|
      profit = arr[j] - arr[i]
      if highest < profit
        highest = profit
        start_day = i
        end_day = j
      end
    end
  end
  [start_day, end_day]
end