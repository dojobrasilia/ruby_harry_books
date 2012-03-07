class HarryPotterBookShop

	def buy (books)
		if books <= 5
			return (books*42)*(1 - 0.05 * (books - 1) )
		else
			min = buy(5)+buy(books-5)
			4.downto(1) {|i| 
				value = buy(i)+buy(books-i)	
				if (value < min)
					min = value
					print min
					print ":"
					puts  i
				end
			}
			return min
		end
	end
end