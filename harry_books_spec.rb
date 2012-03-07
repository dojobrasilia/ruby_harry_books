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
end