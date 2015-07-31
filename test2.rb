inp = [1, 28, 12, 31, 11, 5, 4, 30, 30, 8, 9, 39, 2, 5, 33, 33, 37, 5, 12, 27, 23, 39, 1, 36, 28, 33, 24, 5, 27, 36]
sum = 0
inp.each { |x| 
	sum = sum + x if ((x % 6 == 4) && x >= 10)
	puts "Summed " + x.to_s + ", becoming " + sum.to_s if ((x % 6 == 4) )#&& x >= 10)
}
print sum.to_s