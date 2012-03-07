class HarryPotterBookShop

	def buy (books)
		return (books*42)*(1 - 0.05 * (books - 1) )
	end
end