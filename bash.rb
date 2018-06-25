def number_comparison(myticket, winningticket)
	myticket = myticket.split('')
	winningticket = winningticket.split('')
	matching_numbers = 0
	winningticket.each_with_index do |num, index|
		if num == myticket[index]
			matching_numbers += 1
		end
	end
	matching_numbers

end