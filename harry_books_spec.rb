require './harry_books'

describe "HarryPotterBookShop" do

	before :each do
		@shop = HarryPotterBookShop.new
	end

	it 'does not charge for no books' do
		@shop.buy(0).should == 0
	end

	it 'gives no discount for a single book' do
		@shop.buy(1).should == 42
	end

	it 'gives 5% of discount for two books' do
		@shop.buy(2).should == (2*42)*(1 - 0.05)
	end

	it 'gives 10% of discount for three books' do
		@shop.buy(3).should == (3*42)*(1 - 0.1)
	end

	it 'gives 15% of discount for four books' do
		@shop.buy(4).should == (4*42)*(1 - 0.15)
	end

	it 'gives 20% of discount for five books' do
		@shop.buy(5).should == (5*42)*(1 - 0.2)
	end

	it 'The best price for 6 books is 210 (5 books with 20% and 1 with none)' do
		@shop.buy(6).should == 210
	end

	it 'The best price for 7 books is 247.8 (5 books with 20% and 2 with 5%)' do
		@shop.buy(7).should == 247.8
	end

	it 'The best price for 8 books is 281.4 (5 books with 20% and 3 with 10%)' do
		@shop.buy(8).should == 281.4
	end
end