import array
import math
import sys

n = int(sys.argv[1])
nums = array.array('i', [False] * 2 + [True] * (n - 2))

upper_lim = int(math.sqrt(n))
i = 2
while i <= upper_lim:
    if nums[i]:
        m = i**2
        while m < n:
            nums[m] = False
            m += i
    i += 1

print(len([x for x in nums if nums]))
