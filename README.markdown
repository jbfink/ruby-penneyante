Nontransitive Penney-ante in Ruby
=================================

Nontransitive Penney-ante is a coin toss cheating game, except the cheating is done in probabilities instead of sleight-of-hand. There *used* to be a paper about it [here](http://www.gatsby.ucl.ac.uk/~mark/notes/penneyante/amw_penneyante.pdf)* but that link appears to be dead. There is a [Wikipedia page](https://en.wikipedia.org/wiki/Penney's_game). Briefly put, Penney-ante is a game of flipping coins between two people. At the start of the game, each party selects a sequence of three coin tosses - e.g., something like HHT (heads-heads-tails) or TTT (tails-tails-tails).  A coin is then tossed and continues to be tossed until a winning sequence is made -- e.g., a coin toss cycle of THTTHTTHHT would end up winning for a guess of HHT, as you can see in the last sequence of three. TTT would win if the cycle was something like HTTHTTT. And so on.

Through some pretty complex math that I don't understand because I am a librarian with an English degree, a knowledgable nogoodnik can tilt the odds in their favour providing they can get the mark to guess first -- viz, if the mark guesses HHT, the nogoodnik can guess THH and vastly increase their odds of winning. The secret is to take the mark's sequence of three -- HHT in this case -- and reverse the middle coin (H, to T) and tack that onto the beginning, pushing out the last guess. So HHH becomes THH, HHT becomes THH, HTH becomes HHT.

This is a simulator of that, with the user playing the part of the mark and the Ruby program selecting the proper sequence. 

Note that this depends on ruby 1.9.2 (for use of the sample method) but if you have ruby 1.8.7 and the backport gem it will work as well at some point. Right now you run it with ruby pa.rb but that may/will be prettified at some point.

* there appears to be a Youtube video explaining things [here](http://www.youtube.com/watch?v=OcYnlSenF04)

TODO:

Classifying/cleaning up the functions.rb file

Input sanity check (number of coins, letters)

Prettified output

Sinatra-ize/Rack for heroku deployment
