#
def cointoss
      toss=[0,1].sample
	if toss == 1
		return "H"
	else
		return "T"
	end
end


puts cointoss


