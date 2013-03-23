#
def cointoss
      toss=[0,1].sample
	if toss == 1
		return "H"
	else
		return "T"
	end
end
array = []
counter = 0
until counter == 3
	array << cointoss
	counter +=1
end
puts array


