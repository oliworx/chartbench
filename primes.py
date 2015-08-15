import sys
Max=int(sys.argv[1])					# get Max from command line args 		
P = {x: True for x in range(2,Max)}		# first assume numbers are prime
for i in range(2, int(Max** (0.5))):	# until square root of Max
	if P[i]:							# 
		for j in range(i*i, Max, i):	# mark all multiples of a prime
			P[j]=False					# as not beeing a prime

numprimes = 0;							# Count all primes
for i,isprime in P.items():
	if isprime:
		##print(i),
		numprimes=numprimes+1

print(numprimes) 				# print number of primes
