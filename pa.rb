require "./functions.rb"
print "What's your guess, sucka?\n"

# note that yourguess keeps getting destructively changed, which is why I am
# doing the whole .clone and mine thing.
print ">> "
input = gets.chomp.upcase

yourguess = input.split("")
yourgo = yourguess.clone


mine = myguess(yourguess)
print "If you said #{yourgo}, that means my guess is #{mine}."

	

array = []
until array[0..2] == mine || array[0..2] == yourgo
	array.insert(0,cointoss)
end
print array[0..2]
win(array,mine,yourgo)
