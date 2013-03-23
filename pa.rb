require "./functions.rb"
print "What's your guess, sucka?"
# note that yourguess keeps getting destructively changed, which is why I am
# doing the whole .clone and mine thing.
input = gets.chomp.upcase

yourguess = input.split("")
yourgo = yourguess.clone


mine = myguess(yourguess)
print "If you said #{yourgo}, that means my guess is #{mine}."

	

array = []
counter = 0
until counter == 3
	array << cointoss
	counter +=1
end
print array
win(array,mine,yourgo)
