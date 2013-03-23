def myguess(yourguess)
	# if yourguess is HTT, myguess wants to be HHT -- swap middle guess, put that swap at front, push out last guess.
	if yourguess[1] == "T"
		then mymiddle = "H"
	else
		mymiddle = "T"
	end
	myguess = (yourguess.delete_at(1)) ; (yourguess.insert(0,mymiddle))
end

def cointoss
	return ["H","T"].sample
end

def win(array,mine,yourgo)
if array == mine then
	print "I WON"
elsif array == yourgo
	print "YOU WON"
else
	print "NOBODY WON"
end
end
