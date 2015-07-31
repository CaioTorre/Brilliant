inps  = [[12, 10, 8, 36, 12, 10, 0, 20, 0, 2], [28, 29, 11, 29, 2, 6, 4, 7, 13, 32], [21, 32, 32, 12, 31, 20, 16, 6, 7, 11], [32, 36, 17, 5, 10, 30, 20, 7, 33, 11], [28, 10, 21, 8, 15, 15, 38, 30, 13, 4], [16, 25, 15, 35, 4, 14, 22, 22, 39, 17], [18, 5, 11, 6, 34, 8, 21, 3, 19, 22], [1, 15, 38, 33, 17, 1, 3, 25, 22, 0], [31, 1, 6, 2, 2, 14, 37, 27, 14, 14], [2, 16, 2, 18, 16, 28, 25, 30, 8, 23]]
inps2 = [[12, 10, 8, 20, 12, 10, 0, 20, 0, 2], [20, 20, 11, 20, 2, 6, 4, 7, 13, 20], [20, 20, 20, 12, 20, 20, 16, 6, 7, 11], [20, 20, 17, 5, 10, 20, 20, 7, 20, 11], [20, 10, 20, 8, 15, 15, 20, 20, 13, 4], [16, 20, 15, 20, 4, 14, 20, 20, 20, 17], [18, 5, 11, 6, 20, 8, 20, 3, 19, 20], [1, 15, 20, 20, 17, 1, 3, 20, 20, 0], [20, 1, 6, 2, 2, 14, 20, 20, 14, 14], [2, 16, 2, 18, 16, 20, 20, 20, 8, 20]]
averagesF = Array.new(inps.length, 0)
averagesS = Array.new(inps.length, 0)
diffs = Array.new(inps.length, 0)
i = 0
inps.each { |inp|
	inp.each { |x|
		averagesF[i] += x
	}
	averagesF[i] = averagesF[i]/inp.length
	i += 1
}

i = 0
inps2.each { |inp|
	inp.each { |x|
		averagesS[i] += x
	}
	averagesS[i] = averagesS[i]/inp.length
	i += 1
}
#inps.each { |inp|
#	inp.each { |x|
#		x = x > 20 ? 20 : x
#	}
#}
#for m in 0..(inps.length-1)
#	for n in 0..(inps[m].length-1)
#		inps[m][n] = inps[m][n] > 20 ? 20 : inps[m][n]
#	end
#end
#inps.each { |inp|
#	inp.each { |x|
#		averagesS[i] += x
#	}
#	averagesS[i] = averagesS[i]/inp.length
#	i += 1
#}
print averagesF.join(", ")
puts
print averagesS.join(", ")
puts
for k in 0..(inps.length-1)
	diffs[k] = averagesS[k] - averagesF[k]
end
print diffs.join(", ")