print "What's your guess, sucka?"
# note that yourguess keeps getting destructively changed, which is why I am
# doing the whole .clone and mine thing.
input = gets.chomp.upcase

yourguess = input.split("")
yourgo = yourguess.clone

def myguess(yourguess)
	# if yourguess is HTT, myguess wants to be HHT -- swap middle guess, put that swap at front, push out last guess.
	if yourguess[1] == "T"
		then mymiddle = "H"
	else
		mymiddle = "T"
	end
	myguess = (yourguess.delete_at(1)) ; (yourguess.insert(0,mymiddle))

	 
end

mine = myguess(yourguess)
print "If you said #{yourgo}, that means my guess is #{mine}."

	
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
print array

