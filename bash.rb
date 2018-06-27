def number_comparison(myticket, winningticket)
	my_ticket = myticket.split('')
	puts"my ticket is #{my_ticket}"
	winning_ticket = winningticket.split('')
	puts "winning ticket is #{winning_ticket}"
	matching_numbers = 0
	winning_ticket.each_with_index do |num, index|
		puts "num is #{num} and index is #{index}"
		unless num == myticket[index]
			matching_numbers += 1
		end
	end
	matching_numbers
end


def check_for_match_arr(myticketarray, winningticket)
	empty = []
	myticketarray.each do |num|
		if number_comparison(num, winningticket) == 1
			empty << num
		end
	end
	empty
end

def check_for_match_arr_2(myticketarray, winningticket)
	empty = []
	myticketarray.each do |num|
		empty << number_comparison(num, winningticket)
	end
	empty
end

def winarr(myticketarray, winningticket)
	warr = []
	winningticket.each do |num|
		matches = check_for_match_arr_2(myticketarray, num)
		winners = 0
		matches.each do |m|
			if m == 0
				winners += 1
			end
		end
		warr << winners
	end
	warr
end
