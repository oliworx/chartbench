#!/usr/bin/ruby

n = ARGV[0].to_i
nums = [nil, nil, *2..n]

upper_lim = (Math.sqrt n.to_f).to_i
i = 2
while i <= upper_lim
    if nums[i]
		m=i**2
		while m <= n 
			nums[m] = nil
			m+=i
		end
	end
    i += 1
end
p nums.compact.size
