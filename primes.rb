#!/usr/bin/ruby

n = Integer ARGV[0]
nums = [nil, nil, *2..n]
(2..Math.sqrt(n)).each do |i|
    (i**2..n).step(i){|m| nums[m] = nil} if nums[i]
end
p nums.compact.size
