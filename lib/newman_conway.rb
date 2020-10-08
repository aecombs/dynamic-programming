# Time complexity: O(n)
# Space Complexity: O(1)
def newman_conway(num)
  raise ArgumentError.new("Parameter must be a positive int") if num == 0
  return "1" if num == 1

  pattern_arr = [0, 1, 1]

  i = 3
  while i <= num
    pattern_arr << pattern_arr[pattern_arr[i - 1]] + pattern_arr[i - pattern_arr[i - 1]]
    i += 1
  end

  pattern_arr[1..-1].join(" ")
end
