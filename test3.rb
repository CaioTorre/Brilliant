def split(rcv, char)
	splitted = Array.new((rcv.count(char)), "")
	curr = ""
	i = 0
	rcv.each_byte { |x|
		ana = x.chr
		if ana == char
			splitted[i] = curr
			i += 1
			curr = ""
		else
			curr << ana
		end
	}
	return splitted << curr
end
translate = {"a" => "ka","b" => "zu","c" => "mi","d" => "te","e" => "ku", "f" => "lu", "g" => "ji", 
"h" => "ri", "i" => "ki","j" => "zu", "k" => "me", "l" => "ta", "m" => "rin", "n" => "to","o" => "mo", 
"p" => "no", "q" => "ke", "r" => "shi","s" => "ari", "t" => "chi", "u" => "do", "v" => "ru","w" => "mei", 
"x" => "na", "y" => "fu", "z" => "zi"}
while true
print "Mode (1) for translate, (2) for reverse: "
mode = gets.chomp.to_i
print "Input string: "
rcv = gets.chomp
inp = split(rcv, "~")
out = ""
if mode == 1
	inp.each { |x| 
		out << translate.fetch(x)
	}
else
	inp.each { |x| 
		out << translate.key(x)
	}
end
puts out
end