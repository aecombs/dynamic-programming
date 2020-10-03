# Time complexity: O(n)
# Space Complexity: O(1)
def newman_conway(num)
  raise ArgumentError.new("Parameter must be a positive int") if num == 0

  number_hash = { 1 => 1, 2 => 1 }

  nc_helper(num, number_hash)

  pattern_string = ""

  (1..num).each do |i|
    pattern_string += number_hash[i].to_s
    pattern_string += " "
  end

  pattern_string.chop
end

def nc_helper(n, hash)
  if hash[n]
    hash[n]
  else
    hash[n] = nc_helper(nc_helper(n - 1, hash), hash) + nc_helper(n - nc_helper(n - 1, hash), hash); 
  end
end